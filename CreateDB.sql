drop database if exists store;
CREATE DATABASE store CHARACTER SET utf8 COLLATE utf8_unicode_ci;
use store;

create table users(
  name_user varchar(100) not null,
  email varchar(100) not null,
  pass varchar(100) not null,
  avatar varchar(100),
  status_user bool DEFAULT false,
  primary key(email)
)ENGINE=InnoDB CHARACTER SET=UTF8;

create table tokens(
  token varchar(100) not null,
  email varchar(100) not null,
  date_token DATETIME,
  primary key(token),
  foreign key (email) references users(email)

)ENGINE=InnoDB CHARACTER SET=UTF8;

create table comments(
  id_comment int not null auto_increment,
  comment varchar(5000) not null,
  email varchar(100) not null,
  date DATETIME,
  id_film int not null,
  primary key(id_comment),
  foreign key (email) references users(email),
  foreign key (id_film) references films(id_film)
)ENGINE=InnoDB CHARACTER SET=UTF8;