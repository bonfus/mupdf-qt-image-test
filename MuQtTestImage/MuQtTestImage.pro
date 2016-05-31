#-------------------------------------------------
#
# Project created by QtCreator 2014-12-01T09:03:52
#
#-------------------------------------------------

QT       += core gui
TARGET = MuQtTestImage
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app
INCLUDEPATH += $$PWD/../muqt/include
INCLUDEPATH += $$PWD/../mupdf/include
LIBS += -L$$PWD/../muqt/ -lmuqt
LIBS += -L$$PWD/../mupdf/build/release -lmupdf -lmutools -lmupdfthird
SOURCES += main.cpp



