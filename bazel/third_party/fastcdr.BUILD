load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "fastcdr",
    srcs = ["lib/libfastcdr.so"],
    hdrs = glob(["include/fastcdr/**/*.h"]),
    includes = ["include/fastcdr"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
