----------------------- actor -----------------------(배우 CRUD등록읽기수정삭제용)
create sequence actor_seq
start with 1;
	
create table actor(
	actor_no int primary key,
	kor_name varchar2(30),
	eng_name varchar2(30),
	profile_img varchar2(100)
)
----------------------- member -----------------------회원

create table member(
	email varchar2(50) primary key,
	name varchar2(30) not null,
	password varchar2(30) not null,
	grade number(1),
	phone varchar2(15),
	reg_date date,
	birth varchar2(6),
	prof_img varchar2(100),
	card_num varchar2(20),
	email_sv varchar2(1),
	constraint CHECK_MEMBER_EMAIL_SV CHECK (email_sv in ('Y','N'))
);

alter table member add (favor varchar2(50));

----------------------- Video -----------------------비됴
create sequence serial_seq
start with 1001;

create table video(
	serial_no int primary key,
	title varchar2(50),
	sub_title varchar2(100),
	create_year varchar2(10),
	synops varchar2(300),
	running_time varchar2(10),
	category number(2),
	genre number(2),
	producer varchar2(30),
	file_url varchar2(100),
	language varchar2(20),
	reg_date varchar2(20),
	poster varchar2(100),
	grade number(1),
	season number(2),
	episode number(3),
	group_no number(3)
)



----------------------- appearance -----------------------배우가 출연한 영화 같은거 구할떄 사용, 출연 테이블 


create table appear(
	actor_no int,
	serial_no int,
	constraint PK_ACTOR_ES primary key(actor_no,serial_no),
	constraint FK_APPEAR_ACTOR_NO foreign key(actor_no)
	references actor(actor_no) on delete cascade,
	constraint FK_APPEAR_SERIAL_NO foreign key(serial_no)
	references video(serial_no) on delete cascade
)
----------------------- Customer ----------------------- 고객센터 q&a
	
create sequence customer_seq
start with 1;

create table customer(
	customer_seq int primary key,
	category number(2),
	title varchar2(100),
	content clob
)
----------------------- Payment ----------------------- 결제 정보
create sequence pay_seq
start with 1;

create table payment(
	pay_seq int primary key,
	card_num varchar2(20),
	price int,
	company varchar2(15),
	pay_date date,
	expire_date date
)
----------------------- gpa -----------------------grade point average 영화 평점 테이블

create table gpa(
	email varchar2(50),
	serial_no int,
	point int,
	constraint PK_GPA_ES primary key(email,serial_no),
	constraint FK_GPA_EMAIL foreign key(email)
	references member(email) on delete cascade,
	constraint FK_GPA_SERIAL_NO foreign key(serial_no)
	references video(serial_no) on delete cascade
)
----------------------- stats ----------------------- 통계용 테이블 현재는 본 날짜만 기록 

create table stats(
	email varchar2(50),
	serial_no int,
	view_date date,
	constraint PK_STATS_ES primary key(email,serial_no),
	constraint FK_STATS_EMAIL foreign key(email)
	references member(email) on delete cascade,
	constraint FK_STATS_SERIAL_NO foreign key(serial_no)
	references video(serial_no) on delete cascade
)

----------------------- bookmark -----------------------
create table bookmark(
	email varchar2(50),
	serial_no int,
	constraint PK_BOOKMARK_ES primary key(email,serial_no),
	constraint FK_BOOKMAKR_EMAIL foreign key(email)
	references member(email) on delete cascade,
	constraint FK_BOOKMARK_SERIAL_NO foreign key(serial_no)
	references video(serial_no) on delete cascade
)

















create table actor(
	actor_no int primary key,
	kor_name varchar2(30),
	eng_name varchar2(30),
	profile_img varchar2(100)
);
create sequence actor_seq
start with 1;
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'김유신','yousin-kim','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'김지수','jisoo-kim','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'이순신','soonsin-lee','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'이민정','minjung-lee','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'김민희','minhee-kim','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'이민욱','minwouk-lee','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'김하늘','sky-kim','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'김민종','minjong-kim','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'강호동','hodong-kang','default.jpg');
insert into actor(actor_no,kor_name,eng_name,profile_img) 
 values(actor_seq.nextval,'안소희','sohee-ann','default.jpg');

insert into producer(producer_no,kor_name,eng_name,profile_img) 
 values(producer_seq.nextval,'조민우','minwoo-joo','default.jpg');
insert into producer(producer_no,kor_name,eng_name,profile_img) 
 values(producer_seq.nextval,'하일준','illjun-ha','default.jpg');
insert into producer(producer_no,kor_name,eng_name,profile_img) 
 values(producer_seq.nextval,'김석훈','seoukhoon-kim','default.jpg');
insert into producer(producer_no,kor_name,eng_name,profile_img) 
 values(producer_seq.nextval,'이수진','soojin-lee','default.jpg');
 
 select * from producer;
drop table actor;
select * from actor;

