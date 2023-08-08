{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to
this (by the DNS naming spec). Supports the legacy fullnameOverride setting
as well as the name setting.
*/}}
{{- define "ibmdb2.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else if .Values.name -}}
{{- .Values.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ibmdb2.chart" -}}
{{- printf "%s-helm" .Chart.Name | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "ibmdb2.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create the name of the service account 
*/}}
{{- define "ibmdb2.serviceAccount" -}}
{{- default (printf "%s-%s" (include "ibmdb2.fullname" .) "server") -}}
{{- end -}}

{{/*
Create the name of the secret with instance password
*/}}
{{- define "ibmdb2.secretName" -}}
{{- default (printf "%s-%s" (include "ibmdb2.fullname" .) "secret") -}}
{{- end -}}

{{/*
Create the name of the configMap with script to create repodb
*/}}
{{- define "ibmdb2.configName" -}}
{{- default (printf "%s-%s" (include "ibmdb2.fullname" .) "config") -}}
{{- end -}}

{{/*
Common labels.
*/}}
{{- define "ibmdb2.labels" -}}
app.kubernetes.io/name: {{ include "ibmdb2.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ include "ibmdb2.chart" . }}
{{- end -}}

