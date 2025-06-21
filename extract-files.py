#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/lge/g4-common',
    'hardware/qcom-caf/msm8994',
    'vendor/lge/g4-common',
]

blob_fixups: blob_fixups_user_type = {
} # fmt: skip

module = ExtractUtilsModule(
    'g4',
    'lge',
    namespace_imports=namespace_imports,
    add_firmware_proprietary_file=False,
    blob_fixups=blob_fixups,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(
        module, 'g4-common', module.vendor
    )
    utils.run()
