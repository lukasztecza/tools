## Common composer commands
### Basic usage
- Install latest dependencies according to composer.json and create/update composer.lock accordingly
```
composer update
```

- Install dependencies according to composer.lock file if exists (if not it will run composer update)
```
composer install
```

- Update specific package repo1/package1
```
composer update repo1/package1
```

- Include package form [Packagist](https://packagist.org/)
```
}
    "require": {
        "symfony/symfony": "v3.2.6"
    }
}
```

- If nothing helps and memory limit exhausted error occurs use
```
php -d memory_limit=-1 /usr/local/bin/composer update "parka/http-client"
```

### Files
- To make a https://github.com/repo1/package1 available to install via composer add composer.json to main directory (note that your files should be in src/Repo1/Package1)
```
{
    "name": "repo1/package1",
    "autoload": {
        "psr-4" : {
             "Repo1\\Package1" : "src/Repo1/Package1"
         }
    }
}
```

- Then you can include repo1/package1 in your project using following composer.json file 
```
{
     "repositories": [
         {
             "type": "vcs",
             "url": "https://github.com/repo1/package1"
         }
    ],
    "require": {
        "repo1/package1": "dev-master"
    }
}
```

### Package versions
- If in github you have specified a release than you can use the following instead of dev-master
```
v1.1.5 will install package tagged with v1.1.5

v1.*   will install latest package form v1.0.0 to v1.9.9

*      will install latest package
```

### Issues
- It may happen that composer can not connect to packagist properly due to ip6 issues, a workaround is
```
sudo sh -c "echo 'precedence ::ffff:0:0/96 100' >> /etc/gai.conf"
```
