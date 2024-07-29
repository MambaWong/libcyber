load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "uuid",
    srcs = ["lib/libuuid.so"],
    hdrs = glob(["include/uuid/*.h"]),
    includes = ["include/uuid"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
