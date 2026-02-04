Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

### wakeonlan
A map of device and mac addresses that we can turn on using Wake on LAN. A named pipe will be created on the host
and a systemd service will be running. This allows us to avoid using Host networking while still being able to use WOL.

Example:
```
ha_wakeonlan:
  pc1:
    mac: "xx:yy:zz:aa:bb"
```

### akri_devices

Map of tty devices to mount (will be mounted under the same name inside container).

Example:
```
ha_akri_devices:
  rfxcom:
    path: "/dev/ttyUSB0"
  cp210x:
    path: "/dev/ttyUSB1"
```

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
