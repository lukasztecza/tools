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

- Show what is in current direcotry
```
ls
```

- Show what is in currnet directory in details including hidden
```
ll
```

- Show tree starting in current directory
```
find .
```

- Show tree starting from dir1 but only files with name starting with abc case insensitive
```
find dir1 -type f -iname 'abc*'
```

- Show all files which contain 'abc1 cde2' string case insensitive starting in current directory
```
fgrep -ri 'abc1 cde2' .
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
