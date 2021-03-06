#############################################################################
# Makefile for building: qps
# Generated by qmake (2.01a) (Qt 4.7.3) on: Sun Aug 28 16:19:22 2011
# Project:  qps.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -o Makefile qps.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DUSING_PCH -DQT_NO_DEBUG -DQT_DBUS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -D_REENTRANT -w $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -D_REENTRANT -w $(DEFINES)
INCPATH       = -I/usr/lib/qt4/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include/QtDBus -I/usr/include -I.moc -I.ui
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)   -lQtDBus -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = 
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = .obj/

####### Files

SOURCES       = proc.cpp \
		qps.cpp \
		pstable.cpp \
		uidstr.cpp \
		ttystr.cpp \
		dialogs.cpp \
		infobar.cpp \
		fieldsel.cpp \
		wchan.cpp \
		prefs.cpp \
		lookup.cpp \
		details.cpp \
		command.cpp \
		misc.cpp \
		trayicon.cpp \
		htable.cpp \
		qttableview.cpp .moc/moc_qps.cpp \
		.moc/moc_pstable.cpp \
		.moc/moc_dialogs.cpp \
		.moc/moc_fieldsel.cpp \
		.moc/moc_prefs.cpp \
		.moc/moc_infobar.cpp \
		.moc/moc_lookup.cpp \
		.moc/moc_details.cpp \
		.moc/moc_command.cpp \
		.moc/moc_misc.cpp \
		.moc/moc_trayicon.cpp \
		.moc/moc_htable.cpp \
		.moc/moc_qttableview.cpp \
		qrc_qps.cpp
OBJECTS       = .obj/proc.o \
		.obj/qps.o \
		.obj/pstable.o \
		.obj/uidstr.o \
		.obj/ttystr.o \
		.obj/dialogs.o \
		.obj/infobar.o \
		.obj/fieldsel.o \
		.obj/wchan.o \
		.obj/prefs.o \
		.obj/lookup.o \
		.obj/details.o \
		.obj/command.o \
		.obj/misc.o \
		.obj/trayicon.o \
		.obj/htable.o \
		.obj/qttableview.o \
		.obj/moc_qps.o \
		.obj/moc_pstable.o \
		.obj/moc_dialogs.o \
		.obj/moc_fieldsel.o \
		.obj/moc_prefs.o \
		.obj/moc_infobar.o \
		.obj/moc_lookup.o \
		.obj/moc_details.o \
		.obj/moc_command.o \
		.obj/moc_misc.o \
		.obj/moc_trayicon.o \
		.obj/moc_htable.o \
		.obj/moc_qttableview.o \
		.obj/qrc_qps.o
DIST          = /usr/lib/qt4/mkspecs/common/g++-multilib.conf \
		/usr/lib/qt4/mkspecs/common/unix.conf \
		/usr/lib/qt4/mkspecs/common/linux.conf \
		/usr/lib/qt4/mkspecs/qconfig.pri \
		/usr/lib/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/lib/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib/qt4/mkspecs/features/qt_config.prf \
		/usr/lib/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt4/mkspecs/features/default_pre.prf \
		/usr/lib/qt4/mkspecs/features/release.prf \
		/usr/lib/qt4/mkspecs/features/default_post.prf \
		/usr/lib/qt4/mkspecs/features/qdbus.prf \
		/usr/lib/qt4/mkspecs/features/moc.prf \
		/usr/lib/qt4/mkspecs/features/dbusinterfaces.prf \
		/usr/lib/qt4/mkspecs/features/dbusadaptors.prf \
		/usr/lib/qt4/mkspecs/features/qt.prf \
		/usr/lib/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib/qt4/mkspecs/features/warn_off.prf \
		/usr/lib/qt4/mkspecs/features/resources.prf \
		/usr/lib/qt4/mkspecs/features/uic.prf \
		/usr/lib/qt4/mkspecs/features/yacc.prf \
		/usr/lib/qt4/mkspecs/features/lex.prf \
		qps.pro
QMAKE_TARGET  = qps
DESTDIR       = 
TARGET        = qps

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c -include .obj/qps $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): .ui/ui_watchdog.h .ui/ui_message.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	strip -g qps

Makefile: qps.pro  /usr/lib/qt4/mkspecs/linux-g++/qmake.conf /usr/lib/qt4/mkspecs/common/g++-multilib.conf \
		/usr/lib/qt4/mkspecs/common/unix.conf \
		/usr/lib/qt4/mkspecs/common/linux.conf \
		/usr/lib/qt4/mkspecs/qconfig.pri \
		/usr/lib/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/lib/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib/qt4/mkspecs/features/qt_config.prf \
		/usr/lib/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt4/mkspecs/features/default_pre.prf \
		/usr/lib/qt4/mkspecs/features/release.prf \
		/usr/lib/qt4/mkspecs/features/default_post.prf \
		/usr/lib/qt4/mkspecs/features/qdbus.prf \
		/usr/lib/qt4/mkspecs/features/moc.prf \
		/usr/lib/qt4/mkspecs/features/dbusinterfaces.prf \
		/usr/lib/qt4/mkspecs/features/dbusadaptors.prf \
		/usr/lib/qt4/mkspecs/features/qt.prf \
		/usr/lib/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib/qt4/mkspecs/features/warn_off.prf \
		/usr/lib/qt4/mkspecs/features/resources.prf \
		/usr/lib/qt4/mkspecs/features/uic.prf \
		/usr/lib/qt4/mkspecs/features/yacc.prf \
		/usr/lib/qt4/mkspecs/features/lex.prf
	$(QMAKE) -o Makefile qps.pro
/usr/lib/qt4/mkspecs/common/g++-multilib.conf:
/usr/lib/qt4/mkspecs/common/unix.conf:
/usr/lib/qt4/mkspecs/common/linux.conf:
/usr/lib/qt4/mkspecs/qconfig.pri:
/usr/lib/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/lib/qt4/mkspecs/features/qt_functions.prf:
/usr/lib/qt4/mkspecs/features/qt_config.prf:
/usr/lib/qt4/mkspecs/features/exclusive_builds.prf:
/usr/lib/qt4/mkspecs/features/default_pre.prf:
/usr/lib/qt4/mkspecs/features/release.prf:
/usr/lib/qt4/mkspecs/features/default_post.prf:
/usr/lib/qt4/mkspecs/features/qdbus.prf:
/usr/lib/qt4/mkspecs/features/moc.prf:
/usr/lib/qt4/mkspecs/features/dbusinterfaces.prf:
/usr/lib/qt4/mkspecs/features/dbusadaptors.prf:
/usr/lib/qt4/mkspecs/features/qt.prf:
/usr/lib/qt4/mkspecs/features/unix/thread.prf:
/usr/lib/qt4/mkspecs/features/warn_off.prf:
/usr/lib/qt4/mkspecs/features/resources.prf:
/usr/lib/qt4/mkspecs/features/uic.prf:
/usr/lib/qt4/mkspecs/features/yacc.prf:
/usr/lib/qt4/mkspecs/features/lex.prf:
qmake:  FORCE
	@$(QMAKE) -o Makefile qps.pro

dist: 
	@$(CHK_DIR_EXISTS) .obj/qps1.0.0 || $(MKDIR) .obj/qps1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .obj/qps1.0.0/ && $(COPY_FILE) --parents qps.h pstable.h dialogs.h fieldsel.h prefs.h infobar.h lookup.h details.h command.h misc.h trayicon.h htable.h qttableview.h .obj/qps1.0.0/ && $(COPY_FILE) --parents qps.qrc .obj/qps1.0.0/ && $(COPY_FILE) --parents proc.cpp qps.cpp pstable.cpp uidstr.cpp ttystr.cpp dialogs.cpp infobar.cpp fieldsel.cpp wchan.cpp prefs.cpp lookup.cpp details.cpp command.cpp misc.cpp trayicon.cpp htable.cpp qttableview.cpp .obj/qps1.0.0/ && $(COPY_FILE) --parents watchdog.ui message.ui .obj/qps1.0.0/ && (cd `dirname .obj/qps1.0.0` && $(TAR) qps1.0.0.tar qps1.0.0 && $(COMPRESS) qps1.0.0.tar) && $(MOVE) `dirname .obj/qps1.0.0`/qps1.0.0.tar.gz . && $(DEL_FILE) -r .obj/qps1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) .obj/qps.gch/c .obj/qps.gch/c++
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


###### Prefix headers
.obj/qps.gch/c: stable.h svec.h
	@$(CHK_DIR_EXISTS) .obj/qps.gch/ || $(MKDIR) .obj/qps.gch/ 
	$(CC) $(CFLAGS) $(INCPATH) -x c-header -c stable.h -o .obj/qps.gch/c

.obj/qps.gch/c++: stable.h svec.h
	@$(CHK_DIR_EXISTS) .obj/qps.gch/ || $(MKDIR) .obj/qps.gch/ 
	$(CXX) $(CXXFLAGS) $(INCPATH) -x c++-header -c stable.h -o .obj/qps.gch/c++

check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: .moc/moc_qps.cpp .moc/moc_pstable.cpp .moc/moc_dialogs.cpp .moc/moc_fieldsel.cpp .moc/moc_prefs.cpp .moc/moc_infobar.cpp .moc/moc_lookup.cpp .moc/moc_details.cpp .moc/moc_command.cpp .moc/moc_misc.cpp .moc/moc_trayicon.cpp .moc/moc_htable.cpp .moc/moc_qttableview.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) .moc/moc_qps.cpp .moc/moc_pstable.cpp .moc/moc_dialogs.cpp .moc/moc_fieldsel.cpp .moc/moc_prefs.cpp .moc/moc_infobar.cpp .moc/moc_lookup.cpp .moc/moc_details.cpp .moc/moc_command.cpp .moc/moc_misc.cpp .moc/moc_trayicon.cpp .moc/moc_htable.cpp .moc/moc_qttableview.cpp
.moc/moc_qps.cpp: misc.h \
		qticonloader.h \
		pstable2.h \
		proc.h \
		config.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		infobar.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		prefs.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		qps.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) qps.h -o .moc/moc_qps.cpp

.moc/moc_pstable.cpp: proc.h \
		config.h \
		htable.h \
		qttableview.h \
		pstable.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) pstable.h -o .moc/moc_pstable.cpp

.moc/moc_dialogs.cpp: misc.h \
		qticonloader.h \
		dialogs.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) dialogs.h -o .moc/moc_dialogs.cpp

.moc/moc_fieldsel.cpp: proc.h \
		config.h \
		fieldsel.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) fieldsel.h -o .moc/moc_fieldsel.cpp

.moc/moc_prefs.cpp: misc.h \
		qticonloader.h \
		prefs.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) prefs.h -o .moc/moc_prefs.cpp

.moc/moc_infobar.cpp: proc.h \
		config.h \
		infobar.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) infobar.h -o .moc/moc_infobar.cpp

.moc/moc_lookup.cpp: svec.h \
		lookup.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) lookup.h -o .moc/moc_lookup.cpp

.moc/moc_details.cpp: proc.h \
		config.h \
		lookup.h \
		svec.h \
		htable.h \
		qttableview.h \
		details.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) details.h -o .moc/moc_details.cpp

.moc/moc_command.cpp: proc.h \
		config.h \
		misc.h \
		qticonloader.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		command.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) command.h -o .moc/moc_command.cpp

.moc/moc_misc.cpp: qticonloader.h \
		misc.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) misc.h -o .moc/moc_misc.cpp

.moc/moc_trayicon.cpp: trayicon.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) trayicon.h -o .moc/moc_trayicon.cpp

.moc/moc_htable.cpp: qttableview.h \
		htable.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) htable.h -o .moc/moc_htable.cpp

.moc/moc_qttableview.cpp: qttableview.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) qttableview.h -o .moc/moc_qttableview.cpp

compiler_dbus_interface_source_make_all:
compiler_dbus_interface_source_clean:
compiler_dbus_adaptor_source_make_all:
compiler_dbus_adaptor_source_clean:
compiler_rcc_make_all: qrc_qps.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qps.cpp
qrc_qps.cpp: qps.qrc \
		icon/vcross.png \
		icon/vpointer.png \
		icon/letters.png \
		icon/superman.png \
		icon/vista.png \
		icon/pause.png \
		icon/preferences-system.png
	/usr/lib/qt4/bin/rcc -name qps qps.qrc -o qrc_qps.cpp

compiler_image_collection_make_all: .ui/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) .ui/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_dbus_interface_header_make_all:
compiler_dbus_interface_header_clean:
compiler_dbus_interface_moc_make_all:
compiler_dbus_interface_moc_clean:
compiler_dbus_adaptor_header_make_all:
compiler_dbus_adaptor_header_clean:
compiler_dbus_adaptor_moc_make_all:
compiler_dbus_adaptor_moc_clean:
compiler_uic_make_all: .ui/ui_watchdog.h .ui/ui_message.h
compiler_uic_clean:
	-$(DEL_FILE) .ui/ui_watchdog.h .ui/ui_message.h
.ui/ui_watchdog.h: watchdog.ui
	/usr/lib/qt4/bin/uic watchdog.ui -o .ui/ui_watchdog.h

.ui/ui_message.h: message.ui
	/usr/lib/qt4/bin/uic message.ui -o .ui/ui_message.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

.obj/proc.o: proc.cpp proc.h \
		config.h \
		uidstr.h \
		ttystr.h \
		wchan.h \
		details.h \
		lookup.h \
		svec.h \
		htable.h \
		qttableview.h \
		proc_common.cpp \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/proc.o proc.cpp

.obj/qps.o: qps.cpp icon/icon.xpm \
		qps.h \
		misc.h \
		qticonloader.h \
		pstable2.h \
		proc.h \
		config.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		infobar.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		prefs.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		dialogs.h \
		trayicon.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/qps.o qps.cpp

.obj/pstable.o: pstable.cpp proc.h \
		config.h \
		pstable.h \
		htable.h \
		qttableview.h \
		misc.h \
		qticonloader.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/pstable.o pstable.cpp

.obj/uidstr.o: uidstr.cpp uidstr.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/uidstr.o uidstr.cpp

.obj/ttystr.o: ttystr.cpp ttystr.h \
		config.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/ttystr.o ttystr.cpp

.obj/dialogs.o: dialogs.cpp qps.h \
		misc.h \
		qticonloader.h \
		pstable2.h \
		proc.h \
		config.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		infobar.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		prefs.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		dialogs.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/dialogs.o dialogs.cpp

.obj/infobar.o: infobar.cpp infobar.h \
		proc.h \
		config.h \
		qps.h \
		misc.h \
		qticonloader.h \
		pstable2.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		prefs.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/infobar.o infobar.cpp

.obj/fieldsel.o: fieldsel.cpp fieldsel.h \
		proc.h \
		config.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/fieldsel.o fieldsel.cpp

.obj/wchan.o: wchan.cpp config.h \
		wchan.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/wchan.o wchan.cpp

.obj/prefs.o: prefs.cpp prefs.h \
		misc.h \
		qticonloader.h \
		proc.h \
		config.h \
		qps.h \
		pstable2.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		infobar.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/prefs.o prefs.cpp

.obj/lookup.o: lookup.cpp lookup.h \
		svec.h \
		svec.cpp \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/lookup.o lookup.cpp

.obj/details.o: details.cpp details.h \
		proc.h \
		config.h \
		lookup.h \
		svec.h \
		htable.h \
		qttableview.h \
		qps.h \
		misc.h \
		qticonloader.h \
		pstable2.h \
		htable2.h \
		pstable.h \
		infobar.h \
		fieldsel.h \
		prefs.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/details.o details.cpp

.obj/command.o: command.cpp command.h \
		proc.h \
		config.h \
		misc.h \
		qticonloader.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		qps.h \
		pstable2.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		infobar.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		prefs.h \
		uidstr.h \
		dialogs.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/command.o command.cpp

.obj/misc.o: misc.cpp misc.h \
		qticonloader.h \
		proc.h \
		config.h \
		icon/x1.xpm \
		icon/x2.xpm \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/misc.o misc.cpp

.obj/trayicon.o: trayicon.cpp global.h \
		qps.h \
		misc.h \
		qticonloader.h \
		pstable2.h \
		proc.h \
		config.h \
		htable2.h \
		pstable.h \
		htable.h \
		qttableview.h \
		infobar.h \
		fieldsel.h \
		details.h \
		lookup.h \
		svec.h \
		prefs.h \
		command.h \
		.ui/ui_watchdog.h \
		.ui/ui_message.h \
		trayicon.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/trayicon.o trayicon.cpp

.obj/htable.o: htable.cpp htable.h \
		qttableview.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/htable.o htable.cpp

.obj/qttableview.o: qttableview.cpp qttableview.h \
		.obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/qttableview.o qttableview.cpp

.obj/moc_qps.o: .moc/moc_qps.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_qps.o .moc/moc_qps.cpp

.obj/moc_pstable.o: .moc/moc_pstable.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_pstable.o .moc/moc_pstable.cpp

.obj/moc_dialogs.o: .moc/moc_dialogs.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_dialogs.o .moc/moc_dialogs.cpp

.obj/moc_fieldsel.o: .moc/moc_fieldsel.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_fieldsel.o .moc/moc_fieldsel.cpp

.obj/moc_prefs.o: .moc/moc_prefs.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_prefs.o .moc/moc_prefs.cpp

.obj/moc_infobar.o: .moc/moc_infobar.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_infobar.o .moc/moc_infobar.cpp

.obj/moc_lookup.o: .moc/moc_lookup.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_lookup.o .moc/moc_lookup.cpp

.obj/moc_details.o: .moc/moc_details.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_details.o .moc/moc_details.cpp

.obj/moc_command.o: .moc/moc_command.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_command.o .moc/moc_command.cpp

.obj/moc_misc.o: .moc/moc_misc.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_misc.o .moc/moc_misc.cpp

.obj/moc_trayicon.o: .moc/moc_trayicon.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_trayicon.o .moc/moc_trayicon.cpp

.obj/moc_htable.o: .moc/moc_htable.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_htable.o .moc/moc_htable.cpp

.obj/moc_qttableview.o: .moc/moc_qttableview.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/moc_qttableview.o .moc/moc_qttableview.cpp

.obj/qrc_qps.o: qrc_qps.cpp .obj/qps.gch/c++
	$(CXX) -c -include .obj/qps $(CXXFLAGS) $(INCPATH) -o .obj/qrc_qps.o qrc_qps.cpp

####### Install

install_bin: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/local/bin/ || $(MKDIR) $(INSTALL_ROOT)/usr/local/bin/ 
	-$(INSTALL_PROGRAM) /home/hyun/Projects/qps-old/package/qps-1.10.16/qps $(INSTALL_ROOT)/usr/local/bin/


uninstall_bin:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/local/bin/qps
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/local/bin/ 


install_man: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/local/share/man/man1/ || $(MKDIR) $(INSTALL_ROOT)/usr/local/share/man/man1/ 
	-$(INSTALL_FILE) /home/hyun/Projects/qps-old/package/qps-1.10.16/qps.1 $(INSTALL_ROOT)/usr/local/share/man/man1/


uninstall_man:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/local/share/man/man1/qps.1
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/local/share/man/man1/ 


install:  install_bin install_man  FORCE

uninstall: uninstall_bin uninstall_man   FORCE

FORCE:

