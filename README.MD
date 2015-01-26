Ansible configuration for centralized logging with Heka+Elasticsearch+Kibana. 
Installs heka on all servers, elasticsearch and kibana on specified servers.

Using:

1. Add your hosts to `hosts` file
2. Set `deploy_user` variable in `hosts` file. This user must have home folder for kibana installation.
3. Start in command line:

```
ansible-playbook ./logs.yml -i hosts -K -u <user>
```
