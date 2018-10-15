FROM redis:4.0.11

RUN mkdir /app

COPY . /app/

WORKDIR /app

COPY redis-slave.conf /app/data/etc/redis.conf
COPY sentinel.conf /app/data/etc/sentinel.conf

COPY run.sh /app/run.sh

CMD sh /app/run.sh