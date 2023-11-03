# Loongnix server
# Install package dependencies
yum install -y loongnix-release-ceph-nautilus.noarch && yum makecache 
yum install -y leveldb-devel gflags gflags-devel protobuf-devel protobuf gperftools gperftools-devel gtest gtest-devel gcc-c++ gflags gflags-devel leveldb-devel gtest gtest-devel openssl-devel

# build
sh config_brpc.sh --headers="/usr/include" --libs="/usr/lib64 /usr/bin"
make
