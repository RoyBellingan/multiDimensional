TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        #RTree/MemoryTest.cpp \
        #RTree/Test.cpp \
        RTree/Test2.cpp \
        #RTree/TestBadData.cpp \
        main.cpp

QMAKE_CXX = g++-9
QMAKE_CC = gcc-9

QMAKE_CXXFLAGS += -O0 -march=native  -msse4.2
#QMAKE_CXXFLAGS += -flto -fuse-ld=gold -fuse-linker-plugin
#QMAKE_LFLAGS += -flto
QMAKE_LINK = g++-9

DISTFILES += \
	RTree/README.md \
	RTree/baddata.txt

HEADERS += \
	RTree/RTree.h
