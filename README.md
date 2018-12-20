# azure-backup
Azure Workshop "Valis v0.2"

---------------
Template "template.json"
---------------
az deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/rg.json --verbose --location westeurope --debug
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template-north.json --verbose --resource-group valis2-North --debug
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template-west.json --verbose --resource-group valis2-West --debug

- valis2-VM1
- valis2-VM1-OS-DISK
- valis2-VM1-NIC
- valis2-VM1-PublicIP
- valis2-NSG
- valis2-VNET
- valis2-HA
- valis2-VM1 Extention (Installs IIS Web Server + Management)