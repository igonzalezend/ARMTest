#!/bin/bash

az acr delete -n EndavaTalentRegistry --resource-group EndavaTalentTest
az aks delete --name EndavaTalentCluster --resource-group EndavaTalentTest -y
az storage account delete -n endavatalentstorage -g EndavaTalentTest -y
az network vnet delete -g EndavaTalentTest -n EndavaTalentVNet
az ad sp delete --id "http://EndavaTalentSP"