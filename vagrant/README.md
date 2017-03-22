## Basic usage

### First install the following on your machine
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Copy Vagrantfile and bootstrap.sh to the project directory
- Vargrantfile is a configuration (which box to use, what port should be exposed etc.)
- bootsrap.sh specifies additional task to do (here it installs apache, mysql and php)


### Common Vagrant commands
- Create Vargrantfile with default values
```
vagrant init

```

- Add [new Vagrant box](https://atlas.hashicorp.com/boxes/search) which will be used to create virtual machines (here we are adding ubuntu/trusty64)
```
vagrant box add ubuntu/trusty64

```

- Bring up virtual machine according to Vagrantfile and specified provisioners (for instance bootstrap.shi)
```
vagrant up

```

- Enter virtual machine
```
vagrant ssh

```

- Exit virtual machine (when inside)
```
exit

```
or
```
logout

```

- Update box with changes in provisioners (for instance in bootsrap.sh)
```
vagrant provision

```

- Turn down virtual machine preserving all changes
```
vagrant halt

```

- Destroy virtual machine and loose all changes
```
vagrant destroy

```
