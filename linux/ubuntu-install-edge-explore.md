# Ubuntu install Microsoft Edge Explore

## Question
How to install Microsoft Edge explore in ubuntu system?

## Answer
This [article](https://www.debugpoint.com/2020/10/how-to-install-edge-ubuntu-linux/) show me the way, run the following commands in your ubuntuprompt:

```sh
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

sudo apt update
sudo apt install microsoft-edge-dev
```
