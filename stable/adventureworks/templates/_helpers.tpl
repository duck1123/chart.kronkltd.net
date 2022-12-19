{{/* vim: set filetype=mustache: */}}
{{/*
 Expand the name of the chart.
 */}}
{{- define "adventureworks.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "adventureworks.release" -}}
{{- .Release.Namespace | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
 Create a default fully qualified app name.
 We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
 */}}
{{- define "adventureworks.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "adventureworks.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}

{{/*
 Common labels
 */}}
{{- define "adventureworks.labels" -}}
helm.sh/chart: {{ include "adventureworks.chart" . }}
{{ include "adventureworks.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
 Selector labels
 */}}
{{- define "adventureworks.selectorLabels" -}}
app.kubernetes.io/name: {{ include "adventureworks.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
