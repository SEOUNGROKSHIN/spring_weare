DROP TABLE spring_weare.tbl_ask;

create table spring_weare.tbl_ask
(
    tno     int auto_increment comment '게시글 번호'
        primary key,
    content varchar(100)                          null comment '내용',
    name    varchar(10)                           not null comment '작성자',
    email   varchar(50)                           not null comment '이메일',
    title   varchar(30)                           not null comment '제목',
    date    timestamp default current_timestamp() not null comment '문의 날짜',
    state   tinyint(1)                            null comment '상태'
);

