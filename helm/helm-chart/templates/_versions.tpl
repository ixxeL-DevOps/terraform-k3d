{{/*
Return the target Kubernetes version
*/}}
{{- define "windforlife.kubeVersion" -}}
{{- default .Capabilities.KubeVersion.Version .Values.kubeVersionOverride }}
{{- end }}

{{/*
Return the appropriate apiVersion for ingress (DOES NOT include API version < Kube 1.19.0 option on purpose)
*/}}
{{- define "windforlife.apiVersion.ingress" -}}
    {{- if .Values.apiVersionOverrides.ingress -}}
        {{- print .Values.apiVersionOverrides.ingress -}}
    {{- else if and (.Capabilities.APIVersions.Has "networking.k8s.io/v1") (semverCompare ">= 1.19-0" (include "windforlife.kubeVersion" .)) -}}
        {{- print "networking.k8s.io/v1" -}}
    {{- else -}}
        {{- fail "This chart has been built for kube 1.19+. Chart will not allow deployment in clusters version < 1.19.0. Please make sure your cluster is up to date before using this chart." }}
    {{- end -}}
{{- end -}}
