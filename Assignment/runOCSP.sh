#!/bin/bash

DIR="/etc/pki/CA/easy-rsa-master/easyrsa3/pki"
PORT=8081
OCPServerSignCert="$DIR/issued/OCSP-Server.crt"
OCPServerSignKey="$DIR/private/OCSP-Server.key"
CACert="$DIR/ca.crt"

openssl ocsp -index $DIR/index.txt -port $PORT -rsigner $OCPServerSignCert -rkey $OCPServerSignKey -CA $CACert -text -out logOCSP.txt 

