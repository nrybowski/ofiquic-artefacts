#! /bin.bash

cd ofiquic-bird
# make -C ofiquic lib cbindgen
autoreconf
./configure PICOQUIC_LIB=quic_socket_api/lib PICOQUIC_SOCK_API_LIB=quic_socket_api/lib PICOQUIC_SOCK_API_HDR=quic_socket_api/include/ OFIB_HDR=ofiquic/ OFIB_LIB=ofiquic/target/release
make -j$(nproc)
