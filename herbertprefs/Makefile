include $(THEOS_MAKE_PATH)/common.mk

BUNDLE_NAME = herbertprefs

herbertprefs_FILES += herbertprefs.xm ../HBPreferences.m
herbertprefs_INSTALL_PATH = /Library/PreferenceBundles
herbertprefs_FRAMEWORKS += UIKit
herbertprefs_CFLAGS += -I.. -Wno-deprecated-declarations
herbertprefs_LIBRARIES += substrate

ifdef SIMULATOR
herbertprefs_PRIVATE_FRAMEWORKS += Preferences
else
herbertprefs_LDFLAGS += -undefined dynamic_lookup
endif

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/herbertprefs.plist$(ECHO_END)
