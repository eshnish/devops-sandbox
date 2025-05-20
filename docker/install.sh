sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
#Add docker's GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Setup Docker Repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
#Install Docker Community Version
sudo apt-get install docker-ce
sudo systemctl status docker
#If the status is failing
sudo apt-get update
sudo apt-get install --only-upgrade docker-ce
sudo systemctl restart docker
sudo systemctl status docker
