# vagrant
Playing with vagrant

## Cheat Sheet

Showing all virtual boxes runing: 
 
     vagrant global-status


Create a default Vagrantfile in the current directory

    vagrant init

Start the vagrant box(es)

    vagrant up

To reprovision a box, do either
    
    vagrant up --provision
    vagrant provision

Stop  the vagrant box(ex)

    vagrant halt

Remove the vagrant box

    vagrant destroy