# azure-backup
Azure Workshop "Valis v0.2"

---------------
Templates
---------------
```
az deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/rg.json --verbose --location westeurope
```
```
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template-west.json --verbose --resource-group valis2-West --no-wait
```
```
az vm image accept-terms --urn veeam:veeam-availability-console:veeamavailabilityconsole:3.0.0
```
```
az vm image accept-terms --urn veeam:office365backup:veeamoffice365backup:3.0.0
```
```
az group deployment create --template-uri https://raw.githubusercontent.com/MadarsSmits/azure-backup/master/template-north.json --verbose --resource-group valis2-North
```

__valis2-West:__
- lokrgawxn4wkabackup (Storage Account)
- S1-Linux-NIC
- S1-Linux-PublicIP
- S1-Linux-VM
- S1-Linux-VM_OsDisk
- S1-Windows-NIC
- S1-Windows-PublicIP
- S1-Windows-VM
- S1-Windows-VM_OsDisk
- S4-BServer-NIC
- S4-BServer-PublicIP
- S4-BServer-VM
- S4-BServer-VM_disk2
- S4-BServer-VM_OsDisk
- S4-DC-NIC
- S4-DC-PublicIP
- S4-DC-VM
- S4-DC-VM_OsDisk
- valis2-west-BSR
- valis2-west-NSG
- valis2-west-VNET

__valis2-North:__
- S5-VMigrate-NIC
- S5-VMigrate-PublicIP
- S5-VMigrate-VM
- S5-VMigrate-VM_OsDisk
- S6-VO365-NIC
- S6-VO365-PublicIP
- S6-VO365-VM
- S6-VO365-VM_OsDisk
- valis2-north-NSG
- valis2-north-VNET
- z3f4jqnr5rbhorestore (Storage Account)