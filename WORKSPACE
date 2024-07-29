workspace(name = "libcyber")

load("//bazel:cyber_deps.bzl", "cyber_deps")

cyber_deps()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "gcc_toolchain",
    sha256 = "9057d0379692162c4b20c9279e8265b6295fa6deb5042fe2ee6d24b857079746",
    strip_prefix = "gcc-toolchain-20240725",
    urls = [
        "https://github.com/MambaWong/gcc-toolchain/archive/refs/tags/20240725.tar.gz",
    ],
)

load("@gcc_toolchain//toolchain:repositories.bzl", "gcc_toolchain_dependencies")

gcc_toolchain_dependencies()

load("@gcc_toolchain//toolchain:defs.bzl", "ARCHS", "gcc_register_toolchain")

gcc_register_toolchain(
    name = "gcc_toolchain_aarch64-buildroot",
    target_arch = ARCHS.aarch64,
)
