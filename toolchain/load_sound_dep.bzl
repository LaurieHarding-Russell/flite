def loadLinuxX86_64bit(visibility=None):
    native.new_local_repository(
        name = "system_libsx86_64",
        path = "/usr/lib/x86_64-linux-gnu",
        build_file_content = """
cc_library(
    name = "alsa",
    srcs = glob(["alsa-lib/*.so"]),
    visibility = ["//visibility:public"],
)
        """
    )

    native.new_local_repository(
        name = "system_include_x86_64",
        path = "/usr/include/linux",
        build_file_content = """
cc_library(
    name = "soundcard",
    hdrs = ["soundcard.h"],
    visibility = ["//visibility:public"],
)
cc_library(
    name = "ioctl",
    hdrs = ["ioctl.h"],
    visibility = ["//visibility:public"],
)
cc_library(
    name = "types",
    hdrs = ["types.h"],
    visibility = ["//visibility:public"],
)
cc_library(
    name = "fcntl",
    hdrs = ["fcntl.h"],
    visibility = ["//visibility:public"],
)"""
    )

    native.new_local_repository(
        name = "system_include_x86_64_alsa",
        path = "/usr/include/alsa",
        build_file_content = """
cc_library(
    name = "alsa",
    hdrs = glob(["*.h", "sound/*.h"]),
    visibility = ["//visibility:public"],
    includes = ["."]
)"""
    )