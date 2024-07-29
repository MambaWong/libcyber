load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "fastrtps",
    srcs = ["lib/libfastrtps.so"],
    hdrs = glob(["include/fastrtps/**/*.h"]),
    includes = ["include/fastrtps"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
    deps = [
        "@fastcdr",
    ],
)
