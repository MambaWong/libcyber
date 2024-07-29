load("@rules_cc//cc:defs.bzl", "cc_library")

config_setting(
    name = "windows",
    constraint_values = ["@platforms//os:windows"],
)

cc_library(
    name = "gtest",
    srcs = ["lib/libgtest.so"],
    hdrs = glob([
        "include/gtest/*.h",
        "include/gtest/**/*.h",
        "include/gmock/*.h",
        "include/gmock/**/*.h",
    ]),
    includes = [
        "include/gmock",
        "include/gtest",
    ],
    linkopts = select({
        ":windows": [],
        "//conditions:default": ["-pthread"],
    }),
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gtest_main",
    srcs = ["lib/libgtest_main.so"],
    visibility = ["//visibility:public"],
    deps = [":gtest"],
)
