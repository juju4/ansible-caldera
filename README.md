# CALDERA automated adversary emulation system

[![Build Status - Main](https://travis-ci.org/juju4/ansible-caldera.svg?branch=main)](https://travis-ci.org/juju4/ansible-caldera)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-caldera.svg?branch=devel)](https://travis-ci.org/juju4/ansible-caldera/branches)

Ansible role to setup MITRE CALDERA automated adversary emulation system

* <https://github.com/mitre/caldera>
* <https://caldera.readthedocs.io/en/latest/index.html>

Default interface on <https://localhost:8888> (users red and blue with randomly generated password in /var/_caldera/caldera/conf/local.yml)

## Requirements & Dependencies

### Ansible

It was tested on the following versions: 2.18

### Operating systems

Debian 13, 12, Ubuntu 24.04, 22.04 and RedHat 9, 10.

## Example Playbook

Just include this role in your list.
For example

```yaml
- name: Play
  host: all
  roles:
    - juju4.caldera
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:

```shell
gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
cd /path/to/roles/juju4.caldera
kitchen verify
kitchen login
KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```

or

```shell
cd /path/to/roles/juju4.caldera/test/vagrant
vagrant up
vagrant ssh
```

or

```shell
pip install molecule docker
molecule test
MOLECULE_DISTRO=ubuntu:24.04 molecule test --destroy=never
```

## Troubleshooting & Known issues

## License

BSD 2-clause
