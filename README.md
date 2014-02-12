Local Testing
=============

1. Create local Vagrant environment: `vagrant up`
1. Test SSH: `vagrant ssh`
1. Get vagrant SSH configuration: `vagrant ssh-config`
1. Install `chef solo`: 

```
knife solo prepare vagrant@localhost --ssh-port 2200 --identity-file ~/.vagrant.d/insecure_private_key
```
1. Apply the cookbook: 

```
knife solo cook vagrant@localhost --ssh-port 2200 --identity-file ~/.vagrant.d/insecure_private_key
```
