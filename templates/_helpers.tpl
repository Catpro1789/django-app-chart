{{- define "django-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "django-app.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{- define "django-app.labels" -}}
app.kubernetes.io/name: {{ include "django-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "django-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "django-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
