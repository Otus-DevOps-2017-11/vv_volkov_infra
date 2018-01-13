# Homework 5

1. Connection to internalhost with one command from localhost

`$ ssh -t -i ~/.ssh/appuser -A appuser@35.205.217.189 ssh -A internalhost`

2. Shortcut command. To

$ ssh internalhost

Add this

```
    Host internalhost
      User appuser
      Hostname internalhost
      ProxyCommand ssh -Al appuser 35.205.217.189 nc %h %p 2> /dev/null
```
    
to `~/.ssh/config` file

3. Configuration

Host bastion, public IP: 35.205.217.189, local IP: 10.132.0.2

Host internalhost, local IP: 10.132.0.3

# Homework 6

1. Create instance with startup script:

`$ gcloud compute instances create reddit-app --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --zone europe-west1-b --tags puma-server --restart-on-failure --metadata-from-file startup-script=startup.sh`

2. Create instance using startup-script-url

`$ gcloud compute instances create reddit-app --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --zone europe-west1-b --tags puma-server --restart-on-failure --metadata startup-script-url=gs://my_startup_script/startup.sh`

3. Create firewall rule with gcloud

`$ gcloud compute firewall-rules create default-puma-server --direction=ingress --network=default --allow=tcp:9292 --priority=1000 --target-tags=puma-server --source-ranges=0.0.0.0/0`

