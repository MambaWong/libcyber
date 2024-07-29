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

    if not native.existing_rule("ncurses"):
        native.new_local_repository(
            name = "ncurses",
            path = "/opt/cyber/sysroot/",
            build_file = "//bazel/third_party:ncurses.BUILD",
        )
