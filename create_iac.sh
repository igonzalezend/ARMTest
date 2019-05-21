#!/bin/bash

cd ARM
#SERVICE_PRINCIPAL_DATA=($(az ad sp create-for-rbac -n "EndavaTalentSP" --skip-assignment | awk '/"appId":/ {print $2} /"password":/ {print $2}' | sed 's/"//g; s/,//g'))
#sed -i "s/%ClientId%/${SERVICE_PRINCIPAL_DATA[0]}/g" endavaTalent.json
#sed -i "s/%ClientSecret%/${SERVICE_PRINCIPAL_DATA[1]}/g" endavaTalent.json
az group deployment create --name "EndavaTalentDeployment" --resource-group "EndavaTalent" --template-file "endavaTalent.json"