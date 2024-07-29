load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "json",
    srcs = [],
    hdrs = glob([
        "include/nlohmann/*.hpp",
        "include/nlohmann/**/*.hpp",
    ]),
    includes = ["include/nlohmann"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
    alwayslink = True,
)
