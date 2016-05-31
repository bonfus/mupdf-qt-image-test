TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS = mupdf \
          muqt \
          MuQtTestImage
muqt.depends = mupdf
MuQtTestImage.depends = muqt
