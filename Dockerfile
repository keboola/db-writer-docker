#VERSION 1.0.0
FROM keboola/base-php56
MAINTAINER Miro Cillik <miro@keboola.com>

# Run extractor
WORKDIR /home
RUN git clone https://github.com/keboola/db-writer.git ./
RUN git checkout -
RUN composer install --no-interaction

#ENTRYPOINT php ./run.php --data=/data
