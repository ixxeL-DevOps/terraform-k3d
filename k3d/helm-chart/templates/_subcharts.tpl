{{/*
Return the Postgres image to use for initContainer
*/}}
{{- define "windforlife.postgresql.iniContainer.image" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- print (include "postgresql.image" .Subcharts.postgresql) -}}
    {{- else -}}
        {{- print "postgresql:9.6.24" -}}
    {{- end -}}
{{- end -}}

{{/*
Return the appropriate Postgresql Port
*/}}
{{- define "windforlife.postgresql.port" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- print .Values.postgresql.containerPorts.postgresql | quote -}}
    {{- else -}}
        {{ default "5432" .Values.externalPostgresql.postgresqlPort | quote }}
    {{- end -}}
{{- end -}}

{{/*
Return the appropriate Postgresql Host configuration
*/}}
{{- define "windforlife.postgresql.hostname" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- $host := (include "postgresql.primary.fullname" .Subcharts.postgresql) -}}
        {{- printf "%s.%s.svc.cluster.local" $host .Release.Namespace -}}
    {{- else -}}
        {{ .Values.externalPostgresql.postgresqlHost | quote }}
    {{- end -}}
{{- end -}}

{{/*
Return the appropriate Postgresql DB name
*/}}
{{- define "windforlife.postgresql.database" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- if (include "postgresql.database" .Subcharts.postgresql ) }}
            {{- print (include "postgresql.database" .Subcharts.postgresql) -}}
        {{- end -}}
    {{- else -}}
        {{ .Values.externalPostgresql.postgresqlDatabase | quote }}
    {{- end -}}
{{- end -}}

{{/*
Return the appropriate Postgresql User
*/}}
{{- define "windforlife.postgresql.username" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- if (not (empty (include "postgresql.username" .Subcharts.postgresql))) }}
            {{- print (include "postgresql.username" .Subcharts.postgresql) -}}
        {{- end -}}
    {{- else -}}
        {{ default "postgres" .Values.externalPostgresql.postgresqlUsername | quote }}
    {{- end -}}
{{- end -}}


{{/*
Return the appropriate Postgresql Password configuration
*/}}
{{- define "windforlife.postgresql.passwordSecretName" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- print (include "postgresql.secretName" .Subcharts.postgresql) -}}
    {{- else -}}
        {{ .Release.Name }}-postgresql-app
    {{- end -}}
{{- end -}}
{{- define "windforlife.postgresql.passwordSecretKey" -}}
    {{- if .Values.postgresql.selfManaged.enabled }}
        {{- print (include "postgresql.userPasswordKey" .Subcharts.postgresql) -}}
    {{- else -}}
        {{- print "postgresql-password" -}}
    {{- end -}}
{{- end -}}
