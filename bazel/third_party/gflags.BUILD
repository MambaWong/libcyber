load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "gflags",
    srcs = ["lib/libgflags.so"],
    hdrs = glob(["include/gflags/*.h"]),
    includes = ["include/gflags"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
