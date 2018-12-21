# azure-backup
Azure Workshop "Valis v0.2"

---------------
Template "template.json"
---------------
az deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/rg.json --verbose --location westeurope --debug  
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template-north.json --verbose --resource-group valis2-North --debug  
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template-west.json --verbose --resource-group valis2-West --debug  

*) valis2-North:
- S3-Veeam-NIC
- S3-Veeam-PublicIP
- S3-Veeam-VM
- S3-Veeam-VM_OsDisk
- valis2-north-NSG
- valis2-north-VNET
- z3f4jqnr5rbhorestore (Storage Account)

*) valis2-West:
- lokrgawxn4wkabackup (Storage Account)
- S1-Linux-NIC
- S1-Linux-PublicIP
- S1-Linux-VM
- S1-Linux-VM_OsDisk
- S1-Windows-NIC
- S1-Windows-PublicIP
- S1-Windows-VM
- S1-Windows-VM_OsDisk
- S5-BServer-NIC
- S5-BServer-PublicIP
- S5-BServer-VM
- S5-BServer-VM_disk2
- S5-BServer-VM_OsDisk
- S5-DC-NIC
- S5-DC-PublicIP
- S5-DC-VM
- S5-DC-VM_OsDisk
- valis2-BSR
- valis2-west-NSG
- valis2-west-VNET