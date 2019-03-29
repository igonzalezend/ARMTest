RES_GROUP=$0
VNET_NAME=$1
SUBNET_1_NAME=$2
SUBNET_2_NAME=$3
FRONTEND_CONTAINER_NAME=$4
BACKEND_CONTAINER_NAME=$5
az container delete --resource-group $RES_GROUP --name $FRONTEND_CONTAINER_NAME -y
az container delete --resource-group $RES_GROUP --name $BACKEND_CONTAINER_NAME -y
NETWORK_PROFILE_ID_1=$(az network profile list --resource-group $RES_GROUP --query [0].id --output tsv)
NETWORK_PROFILE_ID_2=$(az network profile list --resource-group $RES_GROUP --query [1].id --output tsv)
az network profile delete --id $NETWORK_PROFILE_ID_1 -y
az network profile delete --ids $NETWORK_PROFILE_ID_2 -y
SAL_1_ID=$(az network vnet subnet show --resource-group $RES_GROUP --vnet-name $VNET_NAME --name $SUBNET_1_NAME --query id --output tsv)/providers/Microsoft.ContainerInstance/serviceAssociationLinks/default
SAL_2_ID=$(az network vnet subnet show --resource-group $RES_GROUP --vnet-name $VNET_NAME --name $SUBNET_2_NAME --query id --output tsv)/providers/Microsoft.ContainerInstance/serviceAssociationLinks/default
az resource delete --ids $SAL_1_ID --api-version 2018-07-01
az resource delete --ids $SAL_2_ID --api-version 2018-07-01
az network vnet subnet update --resource-group $RES_GROUP --vnet-name $VNET_NAME --name $SUBNET_1_NAME --remove delegations 0
az network vnet subnet delete --resource-group $RES_GROUP --vnet-name $VNET_NAME --name $SUBNET_1_NAME
az network vnet subnet update --resource-group $RES_GROUP --vnet-name $VNET_NAME --name $SUBNET_2_NAME --remove delegations 0
az network vnet subnet delete --resource-group $RES_GROUP --vnet-name $VNET_NAME --name $SUBNET_2_NAME
az network vnet delete --resource-group $RES_GROUP --name $VNET_NAME