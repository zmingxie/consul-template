vault {
  address = "http://127.0.0.1:8200"
  renew_token = false
  ssl {
    enabled = false
  }
  retry {
    enabled = true
    attempts = 5
    backoff = "1s"
  }
}

template {
  source      = "./etc/consul-template.d/demo.mxie.dev.crt.tpl"
  destination = "./etc/nginx/demo.mxie.dev.crt"
  perms       = "0600"
  command     = "/bin/bash -c 'docker container exec nginx-proxy nginx -s reload 2>/dev/null || true'"
}

template {
  source      = "./etc/consul-template.d/demo.mxie.dev.key.tpl"
  destination = "./etc/nginx/demo.mxie.dev.key"
  perms       = "0600"
  command     = "/bin/bash -c 'docker container exec nginx-proxy nginx -s reload 2>/dev/null || true'"
}

template {
  source      = "./etc/consul-template.d/ca-chain.pem.tpl"
  destination = "./etc/nginx/ca-chain.pem"
  perms       = "0600"
  command     = "/bin/bash -c 'docker container exec nginx-proxy nginx -s reload 2>/dev/null || true'"
}
