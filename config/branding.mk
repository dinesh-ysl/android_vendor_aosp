# Set all versions
PEX_BUILD_TYPE ?= Fan-Edition
PEX_VERSION := 1.0 

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := PixelExtended_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(PEX_BUILD_TYPE)
CUSTOM_VERSION_PROP := 10

CUSTOM_PROPERTIES := \
    org.pex.version=$(PEX_VERSION) \
    org.pixelexperience.version=$(CUSTOM_VERSION_PROP) \
    org.pixelexperience.version.display=$(CUSTOM_VERSION) \
    org.pixelexperience.build_date=$(CUSTOM_BUILD_DATE) \
    org.pixelexperience.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.pixelexperience.build_type=$(PEX_BUILD_TYPE)
