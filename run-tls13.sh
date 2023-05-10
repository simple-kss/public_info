#!/bin/bash

for var i {1..10000}
do
  ./ssl_client2 server_addr=192.168.219.104 server_port=5060 force_version=tls13 request_size=14
done
