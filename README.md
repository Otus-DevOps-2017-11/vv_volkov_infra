1. Connection to internalhost with one command from localhost

`$ ssh -t -i ~/.ssh/appuser -A appuser@35.205.217.189 ssh -A internalhost`

2. Shortcut command. To

$ ssh internalhost

Add this

`Host internalhost`

    `User appuser`

    `Hostname internalhost`

    `ProxyCommand ssh -Al appuser 35.205.217.189 nc %h %p 2> /dev/null`
    
to `~/.ssh/config` file

3. Configuration

Host bastion, public IP: 35.205.217.189, local IP: 10.132.0.2
Host internalhost, local IP: 10.132.0.3
