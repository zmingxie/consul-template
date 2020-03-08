{{- /* demo.mxie.dev.crt.tpl */ -}}
{{ with secret "pki_int/issue/mxie-dot-dev" "common_name=demo.mxie.dev" "ttl=5m" }}
{{ .Data.certificate }}
{{ end }}
