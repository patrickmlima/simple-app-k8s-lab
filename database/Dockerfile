FROM mysql:5.7

LABEL org.opencontainers.image.authors=patrickm.lima1@gmail.com

WORKDIR /var/lib/mysql

ENV MYSQL_DATABASE=meubanco
ENV MYSQL_ROOT_PASSWORD=senha123

COPY ./init.sql /docker-entrypoint-initdb.d

EXPOSE 3306

# ENTRYPOINT ["docker-entrypoint.sh"]

# CMD ["mysqld"]

CMD [""]