#ifndef _INIT_G4_COMMON_H
#define _INIT_G4_COMMON_H

#define CMDLINE_MODEL        "model.name="
#define CMDLINE_MODEL_LEN    (strlen(CMDLINE_MODEL))

#define DEVID_MAX 10
#define USU_MAX 10
#define USUOFFSET 3145722       // UsU offset
#define USUCOUNT 6

#define USUDEV        "/dev/block/bootdevice/by-name/raw_resources"

#define PROP_NAME_MAX   32
#define PROP_VALUE_MAX  92

#endif // _INIT_G4_COMMON_H

