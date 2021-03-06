QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = xmly-downloader-qt5
TEMPLATE = app
CONFIG += c++11

LIBS += $$PWD/cgoqt/xmlydownloader.a
macx {
    LIBS += -framework Security
}

INCLUDEPATH += $$PWD/include $$PWD/cgoqt

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    appsettings.cpp \
    trackinfo.cpp \
    downloaditemdata.cpp \
    main.cpp \
    runnables/checkqrcoderunnable.cpp \
    runnables/downloadfilerunnable.cpp \
    runnables/getalbuminforunnable.cpp \
    runnables/gettrackinforunnable.cpp \
    runnables/getqrcoderunnable.cpp \
    runnables/getuserinforunnable.cpp \
    runnables/getchargetrackinforunnable.cpp \
    runnables/downloadchargetrackrunnable.cpp \
    ui/cookieinputdialog.cpp \
    ui/downloadqueuedialog.cpp \
    ui/downloadtaskitemwidget.cpp \
    ui/getdownloadurldialog.cpp \
    ui/mainwindow.cpp \
    ui/qrcodedialog.cpp \
    utils.cpp

HEADERS += \
  albumtype.h \
  appsettings.h \
  trackinfo.h \
  downloaditemdata.h \
  runnables/checkqrcoderunnable.h \
  runnables/downloadfilerunnable.h \
  appevent.h \
  runnables/downloadvipfilerunnable.h \
  runnables/getalbuminforunnable.h \
  runnables/gettrackinforunnable.h \
  runnables/getqrcoderunnable.h \
  runnables/getuserinforunnable.h \
  runnables/getchargetrackinforunnable.h \
  runnables/downloadchargetrackrunnable.h \
  ui/cookieinputdialog.h \
  ui/downloadqueuedialog.h \
  ui/downloadtaskitemwidget.h \
  ui/getdownloadurldialog.h \
  ui/mainwindow.h \
  ui/qrcodedialog.h \
  utils.h

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

FORMS += \
  ui/cookieinputdialog.ui \
  ui/downloadqueuedialog.ui \
  ui/getdownloadurldialog.ui \
  ui/mainwindow.ui \
  ui/qrcodedialog.ui

RESOURCES += \
  resources/qss.qrc \
  resources/xmly-downloader-qt5.qrc

DISTFILES += \
  resources/ximalaya.ico
