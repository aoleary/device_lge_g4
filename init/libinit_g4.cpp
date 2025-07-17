#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <unistd.h>
#include <fstream>
#include <android-base/logging.h>
#include <android-base/properties.h>

#include "libinit_g4.h"

char product_model[PROP_VALUE_MAX];
char usu_detect[PROP_VALUE_MAX];
const char* detected_usudev;

void sanitize(char* buffer, int max_len) {
    const char* whitelist = "-._";
    char temp[max_len];
    snprintf(temp, max_len, "%s", buffer);
    memset(buffer, 0, max_len);
    for (char* c = temp; *c; ++c) {
        if (isalnum(*c) || strchr(whitelist, *c))
            strncat(buffer, c, 1);
    }
}

void get_device_model() {
    FILE* fp = fopen("/proc/cmdline", "rt");
    if (fp) {
        char line[2048];
        fgets(line, sizeof(line), fp);
        fclose(fp);
        char* token = strtok(line, " ");
        while (token) {
            if (strncmp(token, CMDLINE_MODEL, CMDLINE_MODEL_LEN) == 0) {
                token += CMDLINE_MODEL_LEN;
                snprintf(product_model, DEVID_MAX, "%s", token);
                sanitize(product_model, DEVID_MAX);
                return;
            }
            token = strtok(NULL, " ");
        }
    }
    strcpy(product_model, "NOBLMODEL");
}

void set_usudev() {
    detected_usudev = USUDEV;
    std::ifstream disk(USUDEV, std::ifstream::binary);
    if (!disk) {
        LOG(ERROR) << "UsU: partition not found at '" << USUDEV << "'";
        detected_usudev = nullptr;
    } else {
        LOG(INFO) << "UsU: using partition '" << detected_usudev << "'";
    }
}

void get_usu_model() {
    set_usudev();
    if (!detected_usudev) return;

    std::ifstream disk(detected_usudev, std::ifstream::binary);
    if (!disk) {
        LOG(ERROR) << "UsU: can't open " << detected_usudev;
        return;
    }

    disk.seekg(0, disk.end);
    int length = disk.tellg();
    if (length < USUOFFSET) {
        LOG(ERROR) << "UsU: disk too small";
        return;
    }

    disk.seekg(USUOFFSET, disk.beg);
    char buffer[USUCOUNT + 1] = {0};
    disk.read(buffer, USUCOUNT);
    disk.close();
    strncpy(product_model, buffer, DEVID_MAX);
    LOG(INFO) << "UsU: model = '" << product_model << "'";
}

void get_usu() {
    FILE* fp = fopen("/proc/cmdline", "rt");
    if (fp) {
        char line[2048];
        fgets(line, sizeof(line), fp);
        fclose(fp);

        char* token = strtok(line, " ");
        while (token) {
            if (strncmp(token, CMDLINE_MODEL, CMDLINE_MODEL_LEN) == 0 &&
                (strstr(product_model, "LGLS991") || strstr(product_model, "LG-USU"))) {
                strcpy(usu_detect, "UsU_unlocked");
                get_usu_model();
                sanitize(usu_detect, USU_MAX);
                return;
            }
            token = strtok(NULL, " ");
        }
    }
    strcpy(usu_detect, "officially_unlocked");
    sanitize(usu_detect, USU_MAX);
}

void real_vendor_load_properties() {
    get_device_model();
    get_usu();

    using android::base::SetProperty;

    struct {
        const char* id;
        const char* model;
        const char* name;
        const char* device;
    } variants[] = {
        {"H815", "LG-H815", "p1_global_com", "h815"},
        {"H810", "LG-H810", "p1", "h810"},
        {"H811", "LG-H811", "p1_tmo_us", "h811"},
        {"H812", "LG-H812", "p1", "h812"},
        {"H818", "LG-H818", "p1", "h818"},
        {"H819", "LG-H819", "p1", "h819"},
        {"F500", "LG-F500", "p1", "f500"},
        {"LS991", "LG-LS991", "p1", "ls991"},
        {"US991", "LG-US991", "p1", "us991"},
        {"VS986", "LG-VS986", "p1", "vs986"},
    };

    for (const auto& v : variants) {
        if (strstr(product_model, v.id)) {
            SetProperty("ro.usu.product.detection", "success");
            SetProperty("ro.usu.device.unlockmode", usu_detect);
            SetProperty("ro.product.model", v.model);
            SetProperty("ro.product.name", v.name);
            SetProperty("ro.product.device", v.device);
            SetProperty("ro.build.product", v.device);
            return;
        }
    }

    SetProperty("ro.usu.product.detection", "unknown_model");
    SetProperty("ro.usu.device.unlockmode", usu_detect);
    SetProperty("ro.product.model", product_model);
}

namespace android {
namespace init {
    void vendor_load_properties() {
        real_vendor_load_properties();
    }
}
}

// Exported version for Soong linkers
void vendor_load_properties() {
    real_vendor_load_properties();
}
