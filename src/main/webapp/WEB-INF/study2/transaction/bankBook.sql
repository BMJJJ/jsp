show tables;

create table bankBook (
  idx   int  not null  auto_increment,
  mid  varchar(20)  not null,
  balance int,
  primary key(idx)
);

desc bankBook;
delete from bankBook;
drop table bankBook;

create table bankBookHistory (
  idx   int  not null  auto_increment,
  bankBookIdx int not null,
  content varchar(50) not null,
  primary key(idx)
  /*foreign key(bankBookIdx) references bankBook(idx)*/
);