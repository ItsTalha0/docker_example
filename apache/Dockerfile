FROM debian

RUN apt update
RUN apt install -y apache2 
COPY html /var/www/html
WORKDIR /test
COPY start.sh ./
RUN chown root start.sh
RUN chmod a+rwx start.sh
EXPOSE 80
CMD ["bash","/test/start.sh"]
#RUN initdb -D /db/mydb
#RUN initdb -D /db/my_db

