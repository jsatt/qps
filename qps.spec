# Fedora , Suse , Mandriva , this is just templete....
Name:         qps
Summary:      Visual process manager
Version:      1.10.16
Release:      1
URL:          http://kldp.net/projects/qps/
Source:       %{name}-%{version}.tar.bz2
License:      GPL
BuildRoot:    %{_tmppath}/%{name}-%{version}-build

BuildRequires:  desktop-file-utils
#%ifvendor redhat suse
#echo this is rehat or suse
#%endif

%if "%{_vendor}" == "redhat"
Group:        	System/Monitoring
BuildRequires:  qt4-devel
%endif

%if "%{_vendor}" == "mandriva"
Group:          Monitoring
BuildRequires:  qt4-devel
%endif

# suse
%if "%{_vendor}" == "suse"
Group:        	System/Monitoring
BuildRequires:  qt4-devel
%endif


%description
Qps is a visual process manager, an X11 version of "top" or "ps" that 
displays processes in a window and lets you sort and manipulate them. 

Qps can: 
  o  Change nice value of a process.
  o  Alter the scheduling policy and soft realtime priority of a process.
  o  Display the TCP/UDP sockets used by a process, and names of the 
      connected hosts (Linux only).
  o  Display the memory mappings of the process (which files and shared 
  o  libraries are loaded   where).
  o  Display the open files of a process, and the state of unix domain sockets.
  o  Kill or send any other signal to selected processes.
  o  Display the load average as a graph, and use this as its icon when 
      iconified.
  o  Show (as graph or numbers) current CPU, memory and swap usage.
  o  Sort the process table on any attribute (size, cpu usage, owner etc).
  o  On SMP systems running Linux 2.6 or later (or Solaris), display cpu usage 
      for each processor, and which CPU a process is running on.
  o  Display the environment variables of any process. 
  o  Show the process table in tree form, showing the parent-child 
      relationship. 
  o  Execute user-defined commands on selected processes. 

  Qps runs on Linux and Solaris.


%prep
# -D: only compile modified source files, very fast rebuild
%setup -D -q

%build
%if "%{_vendor}" == "redhat"
qmake-qt4
%else
qmake
%endif

make
#%makeinstall # don't need (by fasthyun@magicn.com) 

%install
rm -rf $RPM_BUILD_ROOT #%{buildroot}
install -D -p -m 0755 -s qps %{buildroot}%{_bindir}/qps
install -D -p -m 0644 qps.1 %{buildroot}%{_mandir}/man1/qps.1
install -D -p -m 0644 icon/icon.xpm %{buildroot}%{_datadir}/pixmaps/qps.xpm
install -D -p -m 0644 qps.desktop %{buildroot}%{_datadir}/applications/qps.desktop


%if "%{_vendor}" == "mandrake"
mkdir -p %{buildroot}{%{_miconsdir},%{_iconsdir},%{_liconsdir},%{_menudir}}
cat > $RPM_BUILD_ROOT%{_menudir}/%{name} << EOF
?package(%{name}): \
command="%{name}" \
icon="%{name}.png" \
needs="x11" \
title="Qps" \
longtitle="Visual process manager" \
section="System/Monitoring" \
xdg="true"
EOF

convert -size 48x48 icon/icon.xpm $RPM_BUILD_ROOT%{_liconsdir}/%{name}.png 
convert -size 32x32 icon/icon.xpm $RPM_BUILD_ROOT%{_iconsdir}/%{name}.png 
convert -size 16x16 icon/icon.xpm $RPM_BUILD_ROOT%{_miconsdir}/%{name}.png

desktop-file-install --vendor="" \
--remove-category="Application" \
--add-category=Monitor \
--add-category=X-MandrivaLinux-System-Monitoring \
--dir $RPM_BUILD_ROOT%{_datadir}/applications $RPM_BUILD_ROOT%{_datadir}/applications/* 

%else
#fedora,suse
desktop-file-install --vendor ""  --dir %{buildroot}%{_datadir}/applications/  qps.desktop
%endif



%clean
rm -rf %{buildroot}

%if "%{_vendor}" == "mandrake"
%post
%update_menus    #this very suck for suse,fedora!!!
%postun
%clean_menus
%endif

%files
%defattr(-, root, root)
%doc CHANGES COPYING README_INSTALL 
%{_bindir}/qps
%{_datadir}/applications/*
%{_datadir}/pixmaps/qps.xpm
%{_mandir}/man1/qps.1*

%if "%{_vendor}" == "mandrake"
%{_menudir}/%{name}
%{_liconsdir}/%{name}.png
%{_iconsdir}/%{name}.png
%{_miconsdir}/%{name}.png
%endif



%changelog
* Thu Aug 24 2006 Charles A Edwards <eslrahc@mandriva.org> 1.9.18.2-1mdv2007.0
- 1st Mdv release

* Sun Nov 13 2005 - fasthyun@magicn.com
- release 1.9.15
