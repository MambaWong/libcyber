# libcyber

libcyber is a fork of Apollo cyber, which supports cross-compilation.

## Build and Install

### Build

#### clone

```bash
git clone --single-branch --branch main https://github.com/MambaWong/libcyber.git
```

#### external libs

- fasrrtps & fastcdr
- gflags & glog & gtest
- tinyxml2
- libuuid
- ncurses

#### cyber

```bash
cd libcyber
bazel build --platforms=@gcc_toolchain//platforms:aarch64_linux -c opt --copt=-fpic //cyber/...
```

### Install

Set `CYBER_INSTALL_PREFIX` as the installation directory for cyber.

#### cyber

```bash
bazel run --platforms=@gcc_toolchain//platforms:aarch64_linux -c opt --copt=-fpic //cyber:install -- ${CYBER_INSTALL_PREFIX}/cyber --pre_clean
```

#### external

`CYBER_SYSROOT_DIR` defaults to `/opt/cyber/sysroot/`.

```bash
mkdir ${CYBER_INSTALL_PREFIX}/cyber/lib/external

cp ${CYBER_SYSROOT_DIR}/lib/libfastrtps.so.1 ${CYBER_SYSROOT_DIR}/lib/libfastcdr.so.1 ${CYBER_INSTALL_PREFIX}/cyber/lib/external
cp ${CYBER_SYSROOT_DIR}/lib/libncurses.so.6 ${CYBER_INSTALL_PREFIX}/cyber/lib/external
cp ${CYBER_SYSROOT_DIR}/lib/libgflags.so.2.2 ${CYBER_INSTALL_PREFIX}/cyber/lib/external
cp ${CYBER_SYSROOT_DIR}/lib/libtinyxml2.so.10 ${CYBER_INSTALL_PREFIX}/cyber/lib/external
cp ${CYBER_SYSROOT_DIR}/lib/libuuid.so.1 ${CYBER_INSTALL_PREFIX}/cyber/lib/external
cp ${CYBER_SYSROOT_DIR}/lib/libglog.so.0 ${CYBER_INSTALL_PREFIX}/cyber/lib/external
```

## Examples

### Setup

#### Host

```bash
cd ${CYBER_INSTALL_PREFIX}
tar czvf cyber.tar.gz cyber/

#
scp cyber.tar.gz username@target_ip:/workspaces/
```

#### Target

```bash
cd /workspaces/
tar xzvf cyber.tar.gz
cd cyber && mkdir -p ./data/log
```

In each open terminal, execute the following commands.

```bash
cd /workspaces/cyber/

LD_LIBRARY_PATH=$(echo $(find "$(pwd)/lib" -mindepth 1 -type d -exec realpath {} \;) | tr ' ' ':'):$LD_LIBRARY_PATH

export APOLLO_DAG_PATH=./share/cyber/examples/
export APOLLO_LIB_PATH=./lib/
export CYBER_PATH=./share/cyber/
export GLOG_log_dir="$(pwd)/data/log"
export GLOG_alsologtostderr=1
export GLOG_minloglevel=0
export GLOG_v=5
```

### Publisher/Subscriber

Open two terminals and execute the following commands respectively.

- talker

  ```bash
  ./bin/talker
  ```

- listener

  ```bash
  ./bin/listener
  ```

### Component

Open three terminals and execute the following commands respectively.

```bash
./bin/channel_prediction_writer
```

```bash
./bin/channel_test_writer
```

```bash
./bin/mainboard -d common_component_example/common.dag
```

## Acknowledgement

libcyber referenced the following projects：

- [Apollo](https://github.com/ApolloAuto/apollo "Baidu Apollo")
- [CyberRT](https://github.com/minhanghuang/CyberRT)
- [wheelos.core](https://github.com/wheelos/core)
