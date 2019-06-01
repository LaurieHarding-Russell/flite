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
