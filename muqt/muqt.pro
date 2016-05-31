TEMPLATE = lib
CONFIG += staticlib
VPATH += $$PWD
INCLUDEPATH += $$PWD/include
INCLUDEPATH += $$PWD/private
INCLUDEPATH += $$PWD/../mupdf/include

libmupdf_lib = -L$$PWD/../mupdf/build/release -lmupdf -lmutools -lmupdfthird
LIBS += libmupdf_lib

libmupdf.commands = cd ../mupdf && make clean && git submodule update --init &&  HAVE_X11=no HAVE_GLFW=no make -f Makefile
libmupdf.target = libmupdf_lib
QMAKE_EXTRA_TARGETS += libmupdf
PRE_TARGETDEPS += libmupdf_lib

SOURCES += mupdf-document.cpp \
           mupdf-page.cpp \
           mupdf-link.cpp \
           mupdf-outline.cpp \
           mupdf-textbox.cpp
HEADERS += private/mupdf-document_p.h \
           private/mupdf-page_p.h \
           private/mupdf-link_p.h \
           private/mupdf-outline_p.h \
           private/mupdf-textbox_p.h

