{{- /* demo.mxie.dev.key.tpl */ -}}
{{ with secret "pki_int/issue/mxie-dot-dev" "common_name=demo.mxie.dev" "ttl=5m" }}
{{ .Data.private_key }}
{{ end }}
