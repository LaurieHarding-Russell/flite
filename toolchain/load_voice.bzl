def load_voice(name, visibility=["//visibility:public"]):
    fullPath = "cmu_us_" + name
    native.cc_library(
        name = name,
        srcs = [
            fullPath + "/cmu_us_" + name + ".c",
            fullPath + "/cmu_us_" + name + "_cg_single_mcep_trees.c",
            fullPath + "/cmu_us_" + name + "_cg.c",
            fullPath + "/cmu_us_" + name + "_cg_single_params.c",
            fullPath + "/cmu_us_" + name + "_cg_durmodel.c",
            fullPath + "/cmu_us_" + name + "_cg_phonestate.c",
            fullPath + "/cmu_us_" + name + "_cg_f0_trees.c",
            fullPath + "/cmu_us_" + name + "_spamf0_accent.c",
            fullPath + "/cmu_us_" + name + "_spamf0_phrase.c",
            fullPath + "/cmu_us_" + name + "_spamf0_accent_params.c",
        ],
        hdrs = [
            fullPath + "/voxdefs.h",
            fullPath + "/cmu_us_" + name + "_cg_durmodel.h",
            fullPath + "/cmu_us_" + name + "_cg_single_mcep_trees.h",
            fullPath + "/cmu_us_" + name + "_cg_f0_trees.h",
            fullPath + "/cmu_us_" + name + "_spamf0_accent.h",
            fullPath + "/cmu_us_" + name + "_spamf0_phrase.h",
        ],
        includes = [fullPath],
        deps = ["//lang:usenglish"],
        visibility = visibility
    )