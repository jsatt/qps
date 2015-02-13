CC = g++
# -Wall			 
CFLAGS = -pg \
	-DG_DISABLE_DEPRECATED 	 	\
	-DGDK_DISABLE_DEPRECATED 	\
	-DGDK_PIXBUF_DISABLE_DEPRECATED  -I.. -I/usr/include/Qt -I/usr/include/QtCore
CLIBS= -lQtCore
all: test
# proc.o svec.o misc.o qps 
# `pkg-config gtk+-2.0 --cflags`
	ctags -R
svec.o : svec.h svec.cpp
	$(CC) svec.cpp -c

proc.o : proc_linux.cpp list.h
	$(CC) proc_linux.cpp -c  $(CFLAGS)

misc.o : misc.h misc.cpp
	$(CC) misc.cpp -c

#qps: main.cpp proc_linux.cpp misc.cpp
#	$(CC) main.cpp proc_linux.o misc.o -o gqps $(CFLAGS) `pkg-config gtk+-2.0 --cflags --libs`

test: main.cpp #proc.o
	gtk-builder-convert main.glade main.xml
	$(CC)  $(CFLAGS) main.cpp -o qps_gtk `pkg-config gtk+-2.0 --cflags --libs`

clean: 
	rm -f *.o qps

run:
	./qps
