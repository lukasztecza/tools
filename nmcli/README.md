# In case network manager does not work
### Refresh wifi connections list
```
nmcli d wifi rescan
```

### List wifi connections list and see all available SSIDs
```
nmcli d wifi list
```

### See network interfaces - for instance wlan0
```
ifconfig -a
```
### Or
```
iwconfig
```

### Disconnect from wifi
```
nmcli d disconnect wlan0
```
### Or
```
nmcli c down someSSID
```

### Connect to saved wifi
```
nmcli d connect wlan0
```
### Or
```
nmcli c up someSSID
```

### Connect to new wifi with password prompt
```
nmcli –ask d wifi connect someSSID
```
### Or providing password
```
nmcli d wifi connect someSSID password somePASS
```
