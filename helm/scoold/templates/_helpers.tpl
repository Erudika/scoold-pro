{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "scoold.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "scoold.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "scoold.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "scoold.labels" -}}
helm.sh/chart: {{ include "scoold.chart" . }}
app.kubernetes.io/name: {{ include "scoold.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Chart.AppVersion }}
app.kubernetes.io/version: {{ . | quote }}
{{- end }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "scoold.selectorLabels" -}}
app.kubernetes.io/name: {{ include "scoold.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Return the name of the image pull secret.
*/}}
{{- define "scoold.imagePullSecretName" -}}
{{- if .Values.ecrCredentials.secretName -}}
{{- .Values.ecrCredentials.secretName | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-regcred" (include "scoold.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Render an empty dockerconfigjson payload used as a placeholder.
*/}}
{{- define "scoold.emptyDockerConfig" -}}
{{- dict "auths" (dict) | toJson | b64enc -}}
{{- end -}}

{{/*
Return the service account used by the ECR helper job/cronjob.
*/}}
{{- define "scoold.ecrHelperServiceAccountName" -}}
{{- printf "%s-ecr-helper" (include "scoold.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the name of the AWS credential secret.
*/}}
{{- define "scoold.ecrAwsSecretName" -}}
{{- printf "%s-ecr-aws-creds" (include "scoold.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
