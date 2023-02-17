#!/bin/bash

mkdir -p certs
SCRIPT_SRC=`dirname "$0"`
eche $SCRIPT_SRC
OPENSSL_SUBJ="/C=DE/ST=Hessen/L=Frankfurt"
OPENSSL_CA="${OPENSSL_SUBJ}/CN=fake-CA"
OPENSSL_SERVER="${OPENSSL_SUBJ}/CN=fake-server"
OPENSSL_CLIENT="${OPENSSL_SUBJ}/CN=fake-client"

sh $SCRIPT_SRC/genroot.sh "${OPENSSL_CA}"
sh ${SCRIPT_SRC}/genserver.sh "${OPENSSL_SERVER}"
sh ${SCRIPT_SRC}/genclient.sh "${OPENSSL_CLIENT}"