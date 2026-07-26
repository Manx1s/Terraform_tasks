Выполнение задания 01:
- Установить все зависимости в проекте - terraform init
- Предполагается хранение конфиденциальных данных в файле personal.auto.tfvars, т.к. это файл, предназначенный для хранения личной секретной информации (логинов, паролей, ключей, токенов и других чувствительных данных).
- Запуск проекта - terraform apply. [Скриншот](/01/Task3-2_TF.png) Скриншот прикреплен к домашнему заданию в поле для отправки домашнего задания, где указаны токены (считаю их конф.данными).
- Возникшие ошибки:
  - Invalid resource name - Причина ошибки в том, что названия контейнеров не должны начинаться с цифр. Могут начаться с _ или с букв.
  - Missing name for resource - Причина ошибки в том, что в строке 23 первоначально не было указано название docker_image. Ошибки 4.1-4.2 [Скриншот](/01/Task3-4_TF.png)
  - Reference to undeclared resource - Ссылка на несуществующую функцию. 
  - Unsupported attribute - Ошибка неподдерживаемого атрибута - данный объект не являлся атрибутом и чтобы он считался атрибутом необходима запись строчного формата. Ошибки 4.3-4.4: [Скриншот](/01/Task3-3_TF.png)
- [Выполнение задачи 5](/01/Task3-5_TF.png)
- [Выполнение задачи 6](/01/Task3-6_TF.png)
- [Выполнение задачи 7](/01/Task3-7_TF.png)
- docker-образ не был удален по причине наличия строки keep_locally = true. А при флаге keep_locally = true - Docker image не будет удален. Если бы keep_locally имел флаг равным false, то тогда Docker_image был бы удален.
"(Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation." - Вставка из документации Terraform блока Optional - https://library.tf/providers/kreuzwerker/docker/latest/docs/resources/image
