AGSR Test Task
Тестовое задание на devops-инженера в медицинский проект:
1. Создать простой HTTP сервер (любой язык программирования\nginx\etc.), который
имеет 2 эндпоинта:
- /message - возвращает сообщение, заданное в конфигурационном файле;
- /health - возвращает 200 Ok;
2. Создать Dockerfile для этого сервера.
3. Создать Helm chart для деплоя приложения в Kubernetes ( chart должен содержать
как минимум namespace, service, deployment, configmap):
- configmap должен содержать сообщение, которое будет возвращать эндпоинт
/message;
- deployment должен содержать startup probe и liveness probe, а также создавать 3
реплики;
4. Создать bash-скрипт, который должен содержать:
- команду для сборки docker-образа сервера;
- команду для отправки docker-образа в удаленный репозиторий;
- команду helm для деплоя приложения;
5. Результат положить в открытый репозитарий git-сервера (GitHub, GitLab, ect.).
6. Предложите и нарисуйте схему минимальной инфраструктуры для мониторинга и
логирования этого приложения в Kubernetes.
