DROP TABLE spring_weare.tbl_ask;

create table spring_weare.tbl_ask
(
    tno     int auto_increment comment '게시글 번호' primary key,
    content varchar(100) null comment '내용',
    writer  varchar(10)  not null comment '작성자',
    email   varchar(20)  not null comment '이메일',
    title   varchar(30)  not null comment '제목',
    date    date         not null comment '문의 날짜'
);
