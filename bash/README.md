## Common bash commands
### Navigation
- Change directory to dir1
```
cd dir1
```

- Change to parent of parent directory
```
cd ../..
```

- Show current directory
```
pwd
```

- Show what is in current direcotry
```
l
```

- Show what is in currnet directory in details including hidden
```
ll
```

### Search
- Show tree starting in current directory
```
find .
```

- Show tree starting from dir1 but only files with name starting with abc case insensitive
```
find dir1 -type f -iname 'abc*'
```

- Show files which contain 'abc1 cde2' case insensitive starting in current directory showing 2 lines before and 5 after
```
fgrep -ri -B 2 -A 5 'abc1 cde2' .
```

- Find location of file1.txt
```
locate file1.txt
```

- Display content of the file1
```
cat file1
```

- Display content of the file2 being able to page up/down
```
less file2
```

- Dsiplay last 50 lines of the file3
```
tail -n 50 file3
```
-
### Creation
- Create directory dir1
```
mkdir dir1
```

- Create file file1
```
touch file1
```

- Move (or renmame) file1 to dir1/file2
```
mv file1 dir1/file2
```

- Copy direcotry dir1 with contents and create dir2
```
cp -r dir1 dir2
```

- Remove everything from the dir1
```
rm -rf dir1
```

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
