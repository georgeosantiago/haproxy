openssl genrsa -out ./certs/example.key 1024
openssl req -new -key ./certs/example.key -out ./certs/example.csr
openssl x509 -req -days 365 -in ./certs/example.csr -signkey ./certs/example.key -out ./certs/example.crt
cat ./certs/example.crt ./certs/example.key | tee ./certs/example.pem

