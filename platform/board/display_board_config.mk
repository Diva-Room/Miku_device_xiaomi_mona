#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE := true
TARGET_SCREEN_DENSITY := 440
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

SOONG_CONFIG_NAMESPACES += dolby_vision
SOONG_CONFIG_dolby_vision += enabled
SOONG_CONFIG_dolby_vision_enabled := true
