Для devops-info_playbook.yaml
Требования:
- Ansible версии не ниже 2.10
- Ansible коллекция community.docker
- Ansible коллекция community.kubernetes
- Kubernetes
- Flannel
- Git


**Для test1-playbook.yaml**
Задача - запустить ansible-playbook на хосте.

Требования:
 - Git
 - Ansible не ниже 2.10
 
Результат:
  - Должна появится дирректория по пути: /home/{username}/test1
  - В эту дирректорию клонируется репозиторий https://github.com/isakimov/test_akimov.git
  - В дирректории /home/{username}/test1 создается файл foo.conf
  - У файла foo.conf установлены права 0711(-rwx--x--x)
