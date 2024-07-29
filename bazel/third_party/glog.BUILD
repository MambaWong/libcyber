load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "glog",
    srcs = ["lib/libglog.so"],
    hdrs = glob(["include/glog/*.h"]),
    includes = ["include/glog"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
