# Consul Template for Reverse Proxy

This example shows how to setup Nginx using Vault as the SSL Client Certificate
Authority.

## Steps to run

* Build the Demo App Docker Image
  ```
  cd ./app
  ./docker-build.sh
  ```
* Start consul-template
  ```
    consul-template -config='./etc/consul-template.d/vault-demo.hcl'
  ```
* Start docker-compose
  ```
    docker-compose up
  ```

## Reference
* https://github.com/hashicorp/consul-template/blob/master/examples/vault-pki.md
