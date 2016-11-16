###To get started:

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html) on your machine.
- fork and clone this repository
- cd into THIS_REPO/vagrant
- type "vagrant up"
- Once the machine is up and running and you are logged into it, cd into /vagrant/tournament
- type "psql" to enter terminal for postgresql
- type "CREATE DATABASE tournament"
- type "\q" to exit psql
- run "python tournament_test.py" to see unit tests
