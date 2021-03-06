// wchan.C
//
// This program is free software. See the file COPYING for details.
// Author: Mattias Engdeg�rd, 1997-1999

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/utsname.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>

#include "config.h"

#include "wchan.h"

#ifdef LINUX
QHash<int,char*> Wchan::dict;
char *Wchan::sysmap = 0;
bool Wchan::sysmap_inited = FALSE;
int Wchan::sysmap_size = 0;

// return malloc:ed hex representation of x
static char *hexstr(unsigned long x)
{
    char *p = (char *)malloc(sizeof(long) * 2 + 1);
    sprintf(p, sizeof(long) == 8 ? "%016lx" : "%08lx", x);
    return p;
}
#endif


// called  by ????
//return wchan symbol (possibly numeric, and empty string if addr=0)

QString Wchan::name(unsigned long addr)
{
#ifdef LINUX
	return "";

#endif

#ifdef SOLARIS
	char buf[sizeof(long) * 2 + 1];
	sprintf(buf, sizeof(long) == 8 ? "%016lx" : "%08lx", addr);
	return QString(buf);
#endif
}

#ifdef LINUX

// return TRUE if open succeeds
bool Wchan::open_sysmap()
{
    // common places to look for a valid System.map
    static char *paths[] = {
	"/boot/System.map-%s",
	"/boot/System.map",
	"/lib/modules/%s/System.map",
	"/usr/src/linux-%s/System.map",
	"/usr/src/linux/System.map",
	"/usr/local/src/linux-%s/System.map",
	"/usr/local/src/linux/System.map",
	0
	};
	sysmap_inited = TRUE;	// don't try again
	for(char **p = paths; *p; p++) {
		char buf[80];
		struct utsname ub;
		uname(&ub);
		int major, minor, lvl;
		if(sscanf(ub.release, "%d.%d.%d", &major, &minor, &lvl) != 3)
			major = -1;		// non-standard release, silently accept it
		sprintf(buf, *p, ub.release);
		if(try_sysmap(buf)) {	// try_sysmap
			if(major >= 0) {
				char vstr[40];
				sprintf(vstr, "Version_%d",	(major << 16) + (minor << 8) + lvl);
				// map a zero page at the end to terminate string
				int ps = getpagesize();
				
				mmap(sysmap + ((sysmap_size + ps - 1) & ~(ps - 1)), ps,
						PROT_READ, MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
				if(!strstr(sysmap, vstr)) {
					fprintf(stderr,
							"qps warning: %s does not match current kernel\n",
							buf);
					munmap(sysmap, sysmap_size + ps);
					sysmap = 0;
					continue;	// search the list for a better file
				}
			}
			return TRUE;
		}
    }
    return FALSE;
}

// try mapping System.map from path, return TRUE if success
bool Wchan::try_sysmap(const char *path)
{
    int fd = open(path, O_RDONLY);
    struct stat sbuf;
    if(fd >= 0) {
	if(fstat(fd, &sbuf) == 0) {
	    sysmap_size = sbuf.st_size;
	    // make room for a zero page after the sysmap
	    sysmap = (char *)mmap(0, sysmap_size + getpagesize(),
				  PROT_READ, MAP_SHARED,
				  fd, 0);
	    close(fd);
	    if(sysmap != (char *)-1)
		return TRUE;
	    sysmap = 0;
	    return FALSE;
	}
	close(fd);
    }
    return FALSE;
}

inline int Wchan::beginning_of_line(int ofs)
{
    // seek backwards to beginning of line
    while(ofs >= 0 && sysmap[ofs] != '\n')
	ofs--;
    return ofs + 1;	
}

char *Wchan::find_sym(unsigned long addr)
{
    // use binary search to find symbol; return malloced string
    int l = 0, r = sysmap_size;
    for(;;) {
	unsigned long a;
	char buf[80];
	int m = (l + r) / 2;
	m = beginning_of_line(m);
	if(m == l) {
	    // see if there is a line further down
	    while(m < r - 1 && sysmap[m] != '\n')
		m++;
	    if(m < r - 1) {
		m++;
	    } else {
		if(r == sysmap_size) {
		    // after last item, probably in a module. give hex addr
		    return hexstr(addr);
		}
		m = l;
		sscanf(sysmap + m, "%lx %*c %s", &a, buf);
		// strip leading sys_ or do_ to reduce field width
		char *p = buf;
		if(strncmp(buf, "do_", 3) == 0)
		    p += 3;
		if(strncmp(buf, "sys_", 4) == 0)
		    p += 4;
		return strdup(p);
	    }
	}
	sscanf(sysmap + m, "%lx %*c %s", &a, buf);
	if(addr < a) {
	    r = m;
	} else {
	    l = m;
	}
    }
}

#endif // LINUX
