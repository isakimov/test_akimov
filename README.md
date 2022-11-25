# test_for_sber

С Nexus работал в первый раз и не получилось загрузить образ в репозиторий в контейнере. Добавил загрузку в DockerHub. 
Еще поднял контейнер с собранным образом на localhost:8082. 

Запустить playbook.yaml 

Требования:
- Ansible версии не ниже 2.10
- Ansible коллекция community.docker
- Docker-compose
- Git

Расположение:
- Jenkins на localhost:8080
- Nexus на localhost:8081
- Сайт localhost:8082
