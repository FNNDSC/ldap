#
# Docker file for LDAP server image
#
# Build image:
#
#   docker build -t <name> .
#
# For example if building a local image:
#
#   docker build -t localhost/openldap:001 .
#

FROM osixia/openldap:1.5.0

LABEL maintainer="dev@babymri.org"

ENV LDAP_ORGANISATION="FNNDSC"  LDAP_DOMAIN="fnndsc.org"

COPY bootstrap.ldif /container/service/slapd/assets/config/bootstrap/ldif/50-bootstrap.ldif
