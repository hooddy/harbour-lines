TARGET = harbour-lines
CONFIG += link_pkgconfig
CONFIG += sailfishapp
PKGCONFIG += glib-2.0 gio-2.0 mlite5
QMAKE_CXXFLAGS += -Wno-unused-parameter
QT += svg

CONFIG(debug, debug|release) {
  DEFINES += LINES_DEBUG=1
  QMAKE_CXXFLAGS_DEBUG *= -O0
  QMAKE_CFLAGS_DEBUG *= -O0
}

SOURCES += \
    src/main.cpp \
    src/QuickLinesGame.cpp \
    src/QuickLinesModel.cpp \
    src/LinesBalls.cpp \
    src/LinesDir.cpp \
    src/LinesPrefs.cpp \
    src/LinesScores.cpp \
    src/LinesSet.cpp \
    src/LinesState.cpp

HEADERS += \
    src/QuickLines.h \
    src/QuickLinesGame.h \
    src/QuickLinesModel.h \
    src/LinesBalls.h \
    src/LinesDebug.h \
    src/LinesScores.h \
    src/LinesSet.h \
    src/LinesState.h \
    src/LinesPrefs.h \
    src/LinesTypes.h

OTHER_FILES += \
    harbour-lines.desktop \
    harbour-lines.png \
    qml/main.qml \
    qml/cover/*.qml \
    qml/pages/*.qml \
    qml/pages/images/*.svg \
    qml/cover/*.svg \
    rpm/harbour-lines.changes \
    rpm/harbour-lines.spec \
    translations/*.ts

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += \
    translations/harbour-lines.ts \
    translations/harbour-lines-ru.ts

# qtsvg

DEFINES += QT_STATIC QT_STATICPLUGIN

QT_SVG_PLUGIN_DIR = qtsvg

INCLUDEPATH += \
  $$QT_SVG_PLUGIN_DIR

SOURCES += \
  $$QT_SVG_PLUGIN_DIR/qsvgiohandler.cpp \
  $$QT_SVG_PLUGIN_DIR/qsvgplugin.cpp

HEADERS += \
  $$QT_SVG_PLUGIN_DIR/qsvgiohandler.h \
  $$QT_SVG_PLUGIN_DIR/qsvgplugin.h

OTHER_FILES += \
  $$QT_SVG_PLUGIN_DIR/svg.json