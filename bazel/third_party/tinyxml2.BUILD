load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "tinyxml2",
    srcs = ["lib/libtinyxml2.so"],
    hdrs = ["include/tinyxml2.h"],
    includes = ["include"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
