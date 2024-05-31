show tables;

create table schedule (
	idx int not null auto_increment, /*스케줄관리 고유번호*/
	mid varchar(20) not null,					/*회원 아이디(일정검색시 필요)*/
	sDate datetime not null,					/*일정 등록 날짜*/
	part varchar(10) not null,				/*일정분류(1.모임, 2.업무, 3.학습, 4.여행 5:기타*/
	content text not null,						/*일정 상세내역*/
	primary key(idx),
	foreign key(mid) references member(mid)
);

desc schedule;

insert into schedule values (default, 'hkd1234', '2024-05-3', '모임', '초등학교동창회');
insert into schedule values (default, 'hkd1234', '2024-05-2', '학습', '프로젝트기획');
insert into schedule values (default, 'ctom1234', '2024-05-3', '모임', '초등학교동창회');
insert into schedule values (default, 'ctom1234', '2024-05-4', '여행', '몽골여행');
insert into schedule values (default, 'htom1234', '2024-05-5', '업무', '기획팀 5월 정기총회');
insert into schedule values (default, 'hkd1234', '2024-05-7', '여행', '부산 여행');
insert into schedule values (default, 'htom1234', '2024-05-9', '여행', '서울 여행');
insert into schedule values (default, 'ctom1234', '2024-05-13', '모임', '초등학교동창회');
insert into schedule values (default, 'hkd1234', '2024-05-18', '기타', '병원방문');
insert into schedule values (default, 'ctom1234', '2024-05-24', '기타', '치과방문');
insert into schedule values (default, 'hkd1234', '2024-06-20', '학습', 'JSP 복습');
insert into schedule values (default, 'ctom1234', '2024-06-20', '모임', '가족모임');
insert into schedule values (default, 'hkd1234', '2024-06-21', '기타', '병원방문');
insert into schedule values (default, 'htom1234', '2024-06-22', '모임', '고등학교동창회');

select * from schedule where mid = 'ctom1234' and substring(sDate,1,10) = '2024-05-13' order by sDate;
select * from schedule where mid = 'ctom1234' and date_format(sDate, '%Y-%m-%d') = '2024-05-13' order by sDate;
select * from schedule where mid = 'ctom1234' and date_format(sDate, '%Y-%m') = '2024-05' order by sDate;

elect * from schedule where mid = 'hkd1234' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' order by sDate, part;

select *,count(*) as cnt from schedule where mid = 'hkd1234' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' order by sDate, part;

select *,count(*) as cnt from schedule where mid = 'hkd1234' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' group by part  order by sDate, part;