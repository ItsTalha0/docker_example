initdb -D db;
pg_ctl start -D db;
echo "host all all all trust" >> db/pg_hba.conf;
sed -i  "s/^#listen_addresses = 'localhost'/listen_addresses = '*'/" db/postgresql.conf;
pg_ctl restart -D db;
psql -U postgres -f db_init.sql;
psql;
