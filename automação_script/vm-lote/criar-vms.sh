#!/bin/bash

RESOURCE_GROUP="terraform-demo-rg"
LOCATION="westus2"
PASSWORD="SenhaForte123"

criar_vm(){
	local NOME_VM=$1
	echo "Criando VM: $NOME_VM"

	az vm create \
		--resource-group $RESOURCE_GROUP \
		--name $NOME_VM \
		--size Standard_D2s_v3 \
		--image Ubuntu2204 \
		--admin-username azureuser \
		--admin-password $PASSWORD \
		--authentication-type password \
		--location $LOCATION \
		--no-wait
	}

#Lista de Vms para criar
VMS=(vm01 vm02)

for nome in "${VMS[@]}"; do
	criar_vm $nome
done

echo "Criação em lote iniciada. Aguarde as Vms serem provisionadas"

