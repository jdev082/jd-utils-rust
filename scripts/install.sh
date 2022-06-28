#!/bin/bash
#installation script

rm -rf bin/
#pkgs=( "list/" "no/"  )
#ver="v0.1.0"
cd ../list
cargo build --release
cd ../no
cargo build --release
cd ../rf
cargo build --release
cd ..
mkdir bin
mv list/target/release/list bin/
mv no/target/release/no bin/
mv rf/target/release/rf bin/
sudo mv bin/* /bin
echo Installed!

