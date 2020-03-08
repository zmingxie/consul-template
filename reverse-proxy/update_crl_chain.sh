#!/bin/bash
set -eu

export VAULT_ADDR='http://127.0.0.1:8200'
CERT_DIR='./etc/nginx'

if [[ ! -d "${CERT_DIR}" ]]; then
  echo "Error! Directory ${CERT_DIR} is not found"
  exit 1
fi

pushd ${CERT_DIR} >/dev/null
curl --silent ${VAULT_ADDR}/v1/pki/crl/pem > root-crl.pem
curl --silent ${VAULT_ADDR}/v1/pki_int/crl/pem > int-crl.pem
openssl crl -inform PEM -text -noout -in root-crl.pem > root-crl.info
openssl crl -inform PEM -text -noout -in int-crl.pem > int-crl.info
awk '{print $0}' int-crl.pem root-crl.pem > crl-chain.pem
popd >/dev/null

echo "Done! CRL Chain is updated."
