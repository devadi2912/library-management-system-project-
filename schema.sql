drop database if exists hello_world; 
create database hello_world ; 
use hello_world ; 

/*
there will be three databases 
books   -- created 
category -- created 
students -- yet to be created 
borrowed 
*/

create table if not exists category (
    id int primary key , 
    type varchar (10) 
);


create table if not exists books (
    book_id int primary key AUTO_INCREMENT, 
    title varchar (50) not null,
    author varchar (20) default "not updated",
    subject varchar (30) default "not updated",
    type int ,
    version DATE , 
    total int default 0 ,
    available int ,
    price FLOAT,
    description varchar (200) default "recently added , yet to be updated",
    FOREIGN KEY (type) REFERENCES category(id)
);



create table if not exists student (
    roll int primary key AUTO_INCREMENT ,   
    name varchar (50) not null , 
    stream varchar (20) ,
    borrowed int default 0,
    returned int  default 0, 
    pending  int 
); 


create table if not exists borrow (
    id int primary key AUTO_INCREMENT,  
    -- dosent require entering the primary id value repeatedly for every entry manages primary key initiallisation with an incremental value 
    name varchar (50) not null ,
    roll int ,     -- foreign key student roll 
    title varchar(50) not null , 
    book_id int ,     -- foreig key 
    issue_date date not null , 
    FOREIGN KEY (roll) REFERENCES student(roll) ,
    FOREIGN KEY (book_id) REFERENCES books (book_id)
); 

alter table borrow 
add column fine float default 0.0 ;

-- displaying all the tables created so far 
describe category  ; 
describe books ; 
describe student ; 
describe borrow ;  

 


