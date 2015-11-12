#VERSION 1.0.0
FROM keboola/docker-php56-all-db
MAINTAINER Miro Cillik <miro@keboola.com>

# Run extractor
WORKDIR /home
RUN git clone https://github.com/keboola/db-writer.git ./
RUN git checkout origin/master
RUN composer install --no-interaction

#ENTRYPOINT php ./run.php --data=/data
