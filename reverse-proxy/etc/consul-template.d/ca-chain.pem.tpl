{{- /* ca-chain.pem.tpl */ -}}
{{ with secret "pki_int/issue/mxie-dot-dev" "common_name=demo.mxie.dev" "ttl=5m" }}
{{ range .Data.ca_chain }}
{{ . }}{{ end }}
{{ end }}
