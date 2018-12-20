# azure-backup
Azure Workshop "Valis v0.2"

---------------
Template "template.json"
---------------
az group create --name valis2 --location "westeurope" --verbose  
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template.json --verbose --resource-group valis2 --debug

- valis2-VM1
- valis2-VM1-OS-DISK
- valis2-VM1-NIC
- valis2-VM1-PublicIP
- valis2-NSG
- valis2-VNET
- valis2-HA
- valis2-VM1 Extention (Installs IIS Web Server + Management)