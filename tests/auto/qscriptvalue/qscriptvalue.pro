load(qttest_p4)
QT = core gui script
SOURCES  += tst_qscriptvalue.cpp
HEADERS  += tst_qscriptvalue.h

win32-msvc* {
    # With -O2, MSVC takes up to 24 minutes to compile this test!
    QMAKE_CXXFLAGS_RELEASE -= -O1 -O2
    QMAKE_CXXFLAGS_RELEASE += -Od
}
