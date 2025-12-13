{{- define "django-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "django-app.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "django-app.labels" -}}
app.kubernetes.io/name: {{ include "django-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
