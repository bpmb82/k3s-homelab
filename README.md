# k3s-homelab
Ansible playbook to install a k3s cluster 

Services currently supported:

* traefik
* sonarr
* radarr
* bazarr
* sabnzbd
* jellyfin (optionally with Intel or Nvidia transcoding)
* home assistant (with serial USB passthrough and wake on lan support)

## Prerequisites

* A valid domain name
* Valid DNS subscription for your domain using Azure or Cloudflare (I use the latter)
* API credentials for Cloudflare/ Azure

## Installation

1. Install ansible, see: [Ansible install](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip)
2. Open env.yml.example and adjust as needed (explanations of all vars is in the example file)
3. Save the file as ```.env.yml```
4. Run the deploy.yml playbook with ansible-playbook:
```ansible-playbook deploy.yml```

Every service will use the following DNS records:

```$SERVICE.example.com```

So, will result in sonarr.example.com etc. You will need to create these records in your own DNS service.