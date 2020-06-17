#!/bin/bash

rm /usr/lib/x86_64-linux-gnu/libhdf5.so /usr/lib/x86_64-linux-gnu/libhdf5_hl.so
ln -s /usr/lib/x86_64-linux-gnu/libhdf5_serial.so.100.0.1 /usr/lib/x86_64-linux-gnu/libhdf5.so
ln -s /usr/lib/x86_64-linux-gnu/libhdf5_serial_hl.so.100.0.0 /usr/lib/x86_64-linux-gnu/libhdf5_hl.so


if [ ! -f /usr/local/lib/libprotobuf.so.9 ]; then
	wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz
	tar -zxvf protobuf-2.6.1.tar.gz
	apt-get install build-essential
	cd protobuf-2.6.1
	./configure
	make -j
	make check -j
	make install -j
	cd ..
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

protoc src/caffe/proto/caffe.proto --cpp_out=.
mkdir include/caffe/proto
mv src/caffe/proto/caffe.pb.h include/caffe/proto

make clean
make -j
make py
#make test -j64
#make runtest -j64
