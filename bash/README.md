## Common bash commands
### Help
- Show manual for cammand rm
```
man rm
```

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

- Show lines which contain 'abc1 cde2' case insensitive starting in current directory showing 2 lines before and 5 after
```
fgrep -ri -B 2 -A 5 'abc1 cde2' .
```

- Show lines which does not contain 'abc2' in the output of file1
```
cat file1 | grep -v 'abc2' .
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

- Find differences between file1 and file2
```
diff file1 file2
```

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

- Extract files from pack1.tar.gz
```
gzip -d pack1.tar.gz
tar xvf pack1.tar
```

- Extract files from pack2.tar.gz quick
```
tar -zxvf pack2.tar.gz
```

- Pack dir1 with tar and gz
```
tar cvf dir1.tar dir1
gzip dir1.tar
```

- Pack dir1 with tar and gz quick
```
tar -czvf dir1.tar.gz dir1
```

- Install pack2.deb
```
dpkg -i pack2.deb
```

- Remove previously installed pack2.deb
```
dpkg -r pack2
```

### System
- Switch user to root
```
sudo su
```

- Change permissions for directories for typical dev environment
```
find /opt/lampp/htdocs -type d -exec chmod 755 {} \;
```

- Change permissions for files for typical dev environment
```
find /opt/lampp/htdocs -type f -exec chmod 644 {} \;
```

- Change owner and group of file1 to user1 and group1
```
chown user1:group1 file1
```

- Change password (root can add username to change his password)
```
passwd
```

- Show memory used in system
```
free
```

- Show top processes in the system
```
top
```

- Kill process with PID 25565
```
kill 25565
```

- Show processes for all users with details
```
ps aux
```

- View environment variables which contain SESSION in name or value
```
export | grep SESSION
```

- Set environment variable VAR1 to be 'value1'
```
export VAR1=value1
```

- Shudown system
```
shutdown -h now
```

- Restart system
```
shutdown -r now
```

- Create backup of database1 in file1.sql using username root and password pass (export database)
```
mysqldump -u root -ppass db_name > db_backup.sql
```

- Import file1.sql to database2 in localhost using username root and password pass
```
mysql -u root -ppass -h localhost database2 < file1.sql
```

### Remote
- Connect via ssh as user1 to remotehost.com
```
ssh user1@remotehost.com
```

- Connect via ftp to remotehost.com
```
ftp remotehost.com
```

- Connect to the database via mysql using user1 to host dbhost1
```
mysql -u user1 -p -h dbhost1
```

- Check if host1 is responding
```
ping host1
````

- Show network interfaces
```
ifconfig
```

- Download content form http://remotehost1/file1 and save as file1
```
wget -O file1 http://remotehost1/file1
```

### Flash disk format
- Show volumes
```
fdisk -l
```

- If you need to create partition table (or fix it)
```
sudo parted /dev/sdc mklabel msdos
```

- Create primary partition (if one does not exist already)
```
sudo parted -a none /dev/sdc mkpart primary fat32 0 8192
```

- Unmount usb  flash drive (for instance /dev/sdb1)
```
umount /dev/sdb1
```

- Format to FAT32 adding custom name USBDR1
```
mkfs.vfat -n 'USBDR1' -I /dev/sdb1
```

- Mount your flash drive
```
mount /dev/sdb1 /mnt/somewhere
```
### Ffmpeg
- Reduce size of the movie and set codec to the popular one
```
 ffmpeg -i input.mp4 -vcodec h264 -crf 28 output.mp4
```
