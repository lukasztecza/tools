## Common bash commands
### Basics
- Show current directory
```
pwd
```

- Change directory to dir1
```
cd dir1
```

- Change to parent of parent directory
```
cd ../..
```

### 

### Change permissions for directories for dev environment
```
find /opt/lampp/htdocs -type d -exec chmod 755 {} \;
```

### Change permissions for files for dev environment
```
find /opt/lampp/htdocs -type f -exec chmod 644 {} \;
```

### Flash disk format
- Show volumes
```
fdisk -l
```

- Unmount usb  flash drive (for instance /dev/sdb1)
```
umnount /dev/sdb1
```

- Format to FAT32 adding custom name USBDR1
```
mkfs.vfat -n 'USBDR1' -I /dev/sdb1
```
