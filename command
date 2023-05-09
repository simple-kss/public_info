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

1)
TCP 핸드쉐이크
step1. 서버측 켜두기
-tls13
./ssl_server2 server_addr=192.168.219.104 server_port=5060 force_version=tls13 response_size=14



step2. 클라이언트 측에서 run-tls13 실행
./run-tls13

step3. result_session.txt 파일 추출
이후 rm -rf result_session.txt로 해당 파일을 지워준다


step4. 서버측을 tls12로 켜둔다
-tls12
./ssl_server2 server_addr=192.168.219.104 server_port=5060 force_version=tls12 response_size=14


step5. 클라이언트 측에서 run-tls12 실행
./run-tls12

step6. result_session.txt 파일 추출
이후 rm -rf result_session.txt로 해당 파일을 지워준다



2)
-ssl_server2
./ssl_server2 server_addr=192.168.219.104 server_port=5060 force_version=tls13 force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 response_size=14 exchanges=10000

-ssl_client2
./ssl_client2 server_addr=192.168.219.104 server_port=5060 force_version=tls13 force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 request_size=14 exchanges=10000


-ssl_server2
./ssl_server2 server_addr=192.168.219.104 server_port=5060 force_version=tls13 force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 response_size=14

-ssl_client2
./ssl_client2 server_addr=192.168.219.104 server_port=5060 force_version=tls13 force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 request_size=14 exchanges=10000
