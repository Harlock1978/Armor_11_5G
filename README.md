# Android device tree for Ulefone Armor 11 5G (Armor_11_5G)

```
#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
### Cleaned Branch to test new Compile img => 22/12/05

### Actions Config:
```
TWRP Manifest: https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni
TWRP Branch: twrp-10.0-deprecated
DT URL: https://github.com/Harlock1978/Armor_11_5G
DT Branch: master_cleaned
Device_PATH: device/ulefone/Armor_11_5G
Device Name: Armor_11_5G
Makefile Name: omni_Armor_11_5G
Build Target: recovery
```

### Build Instructions
```sh
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_Armor_11_5G-eng
mka recoveryimage
```
