#!/bin/bash

# Variables
BACK_IMAGE="rg.fr-par.scw.cloud/ns-bilale/back:latest"
FRONT_IMAGE="rg.fr-par.scw.cloud/ns-bilale/front:latest"
BACK_CONTAINER_ID="TON_BACK_CONTAINER_ID"
FRONT_CONTAINER_ID="TON_FRONT_CONTAINER_ID"

# Se connecter à Scaleway
echo "c8f09914-7d06-44a2-abb1-2492c5c23956" | docker login rg.fr-par.scw.cloud -u "SCW7JSVAMNSHRFFMY9XY" --password-stdin

# Build & Push Back
cd back
docker build -t $BACK_IMAGE .
docker push $BACK_IMAGE
cd ..

# Build & Push Front
cd front
docker build -t $FRONT_IMAGE .
docker push $FRONT_IMAGE
cd ..

# Déploiement Scaleway
scw container container update $BACK_CONTAINER_ID registry-image=$BACK_IMAGE
scw container container update $FRONT_CONTAINER_ID registry-image=$FRONT_IMAGE

# Vérification
scw container container list
