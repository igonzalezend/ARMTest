#!/bin/bash

az acr delete -n EndavaTalentRegistry --resource-group EndavaTalent
az aks delete --name EndavaTalentCluster --resource-group EndavaTalent -y
az network vnet delete -g EndavaTalent -n EndavaTalentVNet 
az ad sp delete --id "http://EndavaTalentSP"