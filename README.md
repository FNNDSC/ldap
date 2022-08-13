# ldap
LDAP server container with some pre-populated user data.

## Abstract

This repo supports bootstrapping a LDAP server with some automatically populated LDAP 
user data. It's based on this project: https://github.com/osixia/docker-openldap.

The populated data is defined in `bootstrap.ldif` file.


### Preconditions
 
#### Install latest Docker and Docker Compose. 

Currently tested platforms:
* ``Docker 18.06.0+``
* ``Docker Compose 1.27.0+``

#### On a Linux machine make sure to add your computer user to the ``docker`` group

Consult this page https://docs.docker.com/engine/install/linux-postinstall/


### Get the LDAP server up

Clone this repo and get the containers up:

```bash
git clone https://github.com/FNNDSC/ldap.git
cd ldap
docker-compose up -d --build
```

After deploying the services, the LDAP server will be available on the following URL: 
http://localhost:389.

In addition, you will be able to browse the LDAP server, view its resources and create new ones by 
connecting to the following URL http://localhost:8090.

Use the following credentials lo login to the `phpLDAPadmin` interface:

`Login DN: cn=admin,dc=fnndsc,dc=org`

`Password: admin1234`

### Tear down the LDAP server
```bash
cd ldap
docker-compose down -v 
```
