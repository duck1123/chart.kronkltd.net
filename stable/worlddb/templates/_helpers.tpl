{{/* vim: set filetype=mustache: */}}
{{/*
 Expand the name of the chart.
 */}}
{{- define "worlddb.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "worlddb.release" -}}
{{- .Release.Namespace | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
 Create a default fully qualified app name.
 We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
 */}}
{{- define "worlddb.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "worlddb.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}

{{/*
 Common labels
 */}}
{{- define "worlddb.labels" -}}
helm.sh/chart: {{ include "worlddb.chart" . }}
{{ include "worlddb.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
 Selector labels
 */}}
{{- define "worlddb.selectorLabels" -}}
app.kubernetes.io/name: {{ include "worlddb.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
