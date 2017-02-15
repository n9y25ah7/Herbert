ifdef SIMULATOR
export TARGET = simulator:clang
export ARCHS = x86_64 i386
else
export TARGET = iphone:latest
export ARCHS = armv7 arm64
endif

include $(THEOS_MAKE_PATH)/common.mk

TWEAK_NAME = herbert

herbert_FILES += Tweak.xm SBIconView.xm CAKeyframeAnimation+dockBounce.m HBPreferences.m
herbert_FILES += extensions/UIView+Origin.m

herbert_CFLAGS += -Iinclude -Iextensions

herbert_FRAMEWORKS += CoreGraphics UIKit QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += herbertprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
