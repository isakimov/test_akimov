# test_for_sber

Сделал не все, но практика все равно хорошая)
С Nexus работал в первый раз и не получилось загрузить образ в репозиторий в контейнере. Добавил загрузку в DockerHub. 
Еще поднял контейнер с собранным образом на localhost:8082. 

Требования:
- Ansible версии не ниже 2.10
Установка:
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

- Ansible коллекция community.docker
Установка: ansible-galaxy collection install community.docker

- Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update && apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo usermod -aG docker $(whoami)
sudo systemctl status docker

- Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

Запустить playbook.yaml 
ansible-playbook playbook.yaml

Расположение:
- Jenkins на localhost:8080
- Nexus на localhost:8081

Папка для nexus
mkdir -p /home/nexus/data/nexus-data
sudo chown -R 200 /home/nexus/

Вольюм подключается в /home    
volumes:
  - /nexus:/home/nexus-data
