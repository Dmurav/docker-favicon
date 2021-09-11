FROM ubuntu
LABEL maintainer="muravskydmitry@yandex.ru"
# отсюда будет запускаться CMD со скриптом
WORKDIR /home
RUN cd /home
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget -y
# создаём скрипт с командой для скачивания сайта
ADD favicon.sh /home
# выдаём скрипту права на исполнение
RUN chmod +x ./favicon.sh
ENTRYPOINT ["sh", "favicon.sh"]
CMD ["www.google.com"]
