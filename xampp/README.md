## Configuration after xampp installation
- In
```
/opt/lampp/etc/httpd.conf
```
- Uncomment line
```
Include etc/extra/httpd-vhosts.conf
```

- In
```
/opt/lampp/etc/extra/httpd-vhosts.conf
```
- Add lines
```
<VirtualHost *:80>
    DocumentRoot "/home/user1/project1/web/"
    ServerName project1.localhost
    <Directory "/home/user1/project1/web/">
        DirectoryIndex index.php
        AllowOverride All
        Order allow,deny
        Allow from all
        Require all granted
    </Directory>
</VirtualHost>
```

- In
```
/etc/hosts
```
- Add line
```
127.0.0.1 project1.localhost
```

- Now project1 is accesible via above url after launching xampp
```
/opt/lampp/lampp start
```
