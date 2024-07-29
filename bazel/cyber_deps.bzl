"""Load the dependencies needed to compile and test libcyber."""

# buildifier: disable=unnamed-macro
def cyber_deps():
    """Load the dependencies needed to compile and test libcyber."""

    if not native.existing_rule("fastrtps"):
        native.new_local_repository(
            name = "fastrtps",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:fastrtps.BUILD",
        )

    if not native.existing_rule("fastcdr"):
        native.new_local_repository(
            name = "fastcdr",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:fastcdr.BUILD",
        )

    if not native.existing_rule("com_github_gflags_gflags"):
        native.new_local_repository(
            name = "com_github_gflags_gflags",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:gflags.BUILD",
        )

    if not native.existing_rule("com_github_google_glog"):
        native.new_local_repository(
            name = "com_github_google_glog",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:glog.BUILD",
        )

    if not native.existing_rule("com_google_googletest"):
        native.new_local_repository(
            name = "com_google_googletest",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:gtest.BUILD",
        )

    if not native.existing_rule("ncurses"):
        native.new_local_repository(
            name = "ncurses",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:ncurses.BUILD",
        )

    if not native.existing_rule("com_github_nlohmann_json"):
        native.new_local_repository(
            name = "com_github_nlohmann_json",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:json.BUILD",
        )

    if not native.existing_rule("tinyxml2"):
        native.new_local_repository(
            name = "tinyxml2",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:tinyxml2.BUILD",
        )

    if not native.existing_rule("uuid"):
        native.new_local_repository(
            name = "uuid",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:uuid.BUILD",
        )
