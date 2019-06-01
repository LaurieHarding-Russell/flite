def loadLinux_X86_64bit(visibility=None):    
    native.new_local_repository(
        name = "system_include_x86_64_linux",
        path = "/usr/include",
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


def alsa_X86_64bit(visibility=None):
    native.new_local_repository(
        name = "alsa_x86_64",
        path = "/usr",
        build_file_content = """
cc_library(
    name = "alsa",
    srcs = glob(["alsa-lib/*.so"]) +
    [
        "lib/x86_64-linux-gnu/libasound.so",
        "lib/x86_64-linux-gnu/libasound.so.2",
        "lib/x86_64-linux-gnu/libasound.so.2.0.0",
        "lib/x86_64-linux-gnu/libalsatoss.so",
        "lib/x86_64-linux-gnu/libalsatoss.so.0",
        "lib/x86_64-linux-gnu/libalsatoss.so.0.0.0",
        # "lib/x86_64-linux-gnu/libalsaoss.so",
        # "lib/x86_64-linux-gnu/libalsaoss.so.0",
        # "lib/x86_64-linux-gnu/libalsaoss.so.0.0.0",
    ],
    hdrs = glob(["include/alsa/*.h", "include/alsa/sound/*.h"]),
    deps = [
        "@system_include_x86_64_linux//:types",
        "@system_include_x86_64_linux//:ioctl",
        "@system_include_x86_64_linux//:fcntl",
    ],
    visibility = ["//visibility:public"],
)
        """
    )