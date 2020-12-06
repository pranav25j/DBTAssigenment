use assignment2;

create table publishers (pubid int primary key,panme varchar(30),email varchar(50) unique,phone varchar(30)  );
create table subjects (subid varchar(5) primary key,sname varchar(30));
create table authors (autid int primary key,aname varchar(30),email varchar(50),phone varchar(30) );
create table titles (titleid int primary key,title varchar(10),pubid int(3), subid varchar(5),pubdate date,cover char(1)  check(cover in('p','h','P','H')),price int(4),
 constraint title_pbid_fk foreign key (pubid) references publishers(pubid),
 constraint title_subid_fk foreign key(subid) references subjects(subid));
 
 select * from authors;
 show tables;
 
 create table titleauthors (titleid int(5),autid int(5),importance int(2),
 constraint titleauthor_titleid_fk foreign key (titleid) references titles(titleid),
 constraint titleauthor_authorid_fk foreign key(autid) references authors (autid));
 
CREATE TABLE  SUBJECTS_BACKUP(SUBID VARCHAR(5) PRIMARY KEY,SNAME  VARCHAR(30));

show tables;

 insert into subjects values('ORA','oracle database 10g');
 insert into subjects values('java','java language');
 insert into subjects values('jee','java enterprice edition');
 insert into subjects values('vb','visual basic.net');
 insert into subjects values('asp','asp.net');
 
 insert into publishers VALUES (1,'WILLEY','WDT@VSNL.NET','91-11-23260877');
 insert into publishers VALUES (2,'WROX','INFO@WROX.COM',NULL);
insert into publishers VALUES (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322');
insert into publishers VALUES (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');


insert into authors VALUES (101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL);
insert into authors VALUES (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL);
insert into authors VALUES (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL);
insert into authors VALUES (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL);
insert into authors VALUES (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL);
insert into authors VALUES (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);

alter table titles modify title varchar(50);


insert into titles VALUES (1001,'ASP.NET UNLEASHED',4,'ASP','2002-12-20','P',540);
insert into titles VALUES (1002,'ORACLE10G COMP. REF.',3,'ORA','2005-05-01','P',575);
insert into titles VALUES (1003,'MASTERING EJB',1,'JEE','2005-02-03','P',475);
insert into titles VALUES (1004,'JAVA COMP. REF',3,'JAVA','2005-03-04','P',499);
 insert into titles VALUES (1005,'PRO. VB.NET',2,'VB','2005-06-15','P',450);
 
 
insert into titleauthors VALUES (1001,104,1);
insert into titleauthors VALUES (1002,105,1);
 insert into titleauthors VALUES (1003,106,1);
insert into titleauthors VALUES (1004,101,1);
insert into titleauthors VALUES (1005,103,1);
 insert into titleauthors VALUES (1005,102,2);
 
 
 select panme ,phone,email from publishers;
select aname,phone from authors;
select titleid,title,pubdate from titles;
select autid,titleid,importance from titleauthors;

select * from subjects where sname like 'oracle%';
select sname from subjects where sname like 'j%';
select sname from subjects where sname like '%.net%';
select aname from authors where aname like '%er';
select *from publishers where panme like '%hill%';

select * from titles where price<500;
select * from subjects where subid='java' or subid='jee';
select aname from authors where autid>103;
select * from titles where titleid=1001 or price>400;

select * from publishers where panme in('TECHMEDIA','WROX');

select max(price) from titles;
select avg(importance) from titleauthors;
select count(autid) from authors;
select*from authors;
select sum(price) from titles;

select year(sysdate());
select date(sysdate());
select day(sysdate());
select month(sysdate());



