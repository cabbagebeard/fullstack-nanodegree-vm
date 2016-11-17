###To get started:

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html) on your machine.
- fork and clone this repository
- cd into THIS_REPO/vagrant
- run "vagrant up" and "vagrant ssh"
- Once the machine is up and running and you are logged into it, cd into /vagrant/tournament
- run "psql" to enter postgresql interactive terminal
- run "\i tournament.sql" to create tables and views from tournament.sql
- run "\q" to exit psql terminal
- run "python tournament_test.py" to see unit tests
