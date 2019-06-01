workspace(name = "flite")

load('@flite//toolchain:load_sound_dep.bzl', 'loadLinux_X86_64bit')
load('@flite//toolchain:load_sound_dep.bzl', 'alsa_X86_64bit')

select({
    "@bazel_tools//platforms:linux": [
        loadLinux_X86_64bit(),
        alsa_X86_64bit()
    ],
    "@bazel_tools//platforms:osx": [

    ]
})