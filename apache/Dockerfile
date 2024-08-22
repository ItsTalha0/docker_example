FROM debian

RUN apt update
RUN apt install -y apache2 
RUN apt install -y postgresql-client
RUN echo "ServerName 0.0.0.0" >> /etc/apache2/apache2.conf
COPY html /var/www/html
COPY cgi-bin/* /usr/lib/cgi-bin/
RUN chmod -R  a+rwx /usr/lib/cgi-bin/*
WORKDIR /test
COPY start.sh ./
RUN chown root start.sh
RUN chmod a+rwx start.sh
EXPOSE 80
CMD ["bash","/test/start.sh"]
#RUN initdb -D /db/mydb
#RUN initdb -D /db/my_db

