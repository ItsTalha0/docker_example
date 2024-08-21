create type m_f as enum('M','F');
create table if not exists legend(id int8 primary key,name varchar,gender m_f);

