FROM alpine


RUN apk add postgresql
RUN mkdir /var/run/postgresql
RUN chown postgres /var/run/postgresql

USER postgres
WORKDIR /var/lib/postgresql
COPY runs.sh ./
RUN mkdir db
RUN initdb -D db
# pg_ctl start -D db
EXPOSE 5432
CMD ["sh","runs.sh"]

#RUN initdb -D /db/mydb
#RUN initdb -D /db/my_db

