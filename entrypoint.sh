#!/bin/bash

ROOT_DIR=/opt/cronicle
LIB_DIR=$ROOT_DIR/lib
DATA_DIR=$ROOT_DIR/data
export CRONICLE_Storage__Filesystem__base_dir=${DATA_DIR}
export NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
export CRONICLE_echo=1
export CRONICLE_foreground=1
rm -rf /opt/cronicle/logs
mkdir -p /datadrive
# git clone repo
node "$LIB_DIR/main.js"