{{/*
Return the name of the chart
*/}}
{{- define "cicd-example.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return a fully qualified app name
*/}}
{{- define "cicd-example.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}
