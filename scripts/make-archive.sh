#!/bin/bash
#makes archive for creating releases
source config.in.sh

rm -rf bin/
#pkgs=( "list/" "no/"  )
#ver="v0.1.0"
cd ../list
cargo build --release
cd ../no
cargo build --release
cd ..
mkdir bin
mv list/target/release/list bin/
mv no/target/release/no bin/
tar -cvf archive/jd-utils-$ver.tar bin
echo created jd-utils-$ver.tar from bin/ to archive/
