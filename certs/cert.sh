openssl genrsa -out ./certs/example.dev.key 1024
openssl req -new -key ./certs/example.dev.key -out ./certs/example.dev.csr
openssl x509 -req -days 365 -in ./certs/example.dev.csr -signkey ./certs/example.dev.key -out ./certs/example.dev.crt
cat ./certs/example.dev.crt ./certs/example.dev.key | tee ./certs/example.dev.pem

