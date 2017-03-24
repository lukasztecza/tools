## Common composer commands
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

- To make a https://github.com/repo1/package1 available to install via composer add composer.json to main directory (note that your files should be in src/Repo1/Package1)
```
{
    "name": "repo1/package1",
    "autoload": {
        "psr-4" : {
             "Repo1/Package1" : "src"
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

- If in github you have specified a release than you can use the following instead of dev-master
```
v1.1.5 will install package tagged with v1.1.5

v1.*   will install latest package form v1.0.0 to v1.9.9

*      will install latest package
```
