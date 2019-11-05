

Create Table customer(
customer_id varchar(10),
primary key(customer_id)
);

create table bill(
bill_id varchar(10),
customer_id varchar(10),
num_of_articles int,
num_of_comments int,
amount numeric(4,2),
primary key(bill_id),
foreign key (customer_id) references customer(customer_id)
);

create table article(
a_id varchar(10),
title varchar(100),
publisher varchar(10),
topic varchar(30),
date_published varchar(10),
last_update varchar(10),
primary key (a_id),
foreign key (publisher) references customer(customer_id)
);

create table username(
name varchar(30),
email varchar(30),
country varchar(30),
avatar varchar(20),
state varchar(20),
login varchar(20),
password varchar(20),
comment_offenses int,
primary key (name),
);

create table comment(
comment_id varchar(10),
username varchar(30),
a_id varchar(10),
type varchar(10),
date varchar(10),
time varchar(10),
content varchar(1000),
likes int,
isFlagged bit,
primary key(comment_id),
foreign key (username) references username (name)
);

create table senior_user(
s_id varchar(10),
comment_queue varchar(10),
primary key(s_id),
);

create table bad_comment(
bad_id varchar(10),
comment_id varchar(10),
reviewer varchar(10),
isDerogatory bit,
primary key(bad_id),
foreign key (reviewer) references senior_user(s_id)
)






