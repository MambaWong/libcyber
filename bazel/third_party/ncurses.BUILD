load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "ncurses",
    srcs = ["lib/libncurses.so"],
    hdrs = glob(["include/ncurses/*.h"]),
    includes = ["include/ncurses"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
