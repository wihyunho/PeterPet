create table board(
    b_no number(5) primary key,
    b_type varchar2(10 char) not null,
    b_title varchar2(30 char) not null,
    b_content clob,
    b_date date not null,
    b_thumbnail varchar2(100 char) not null,
    b_writer VARCHAR2(20 char)
);

create sequence board_seq;

select * from board;

--drop table board;
--drop sequence board_seq;

--delete board;

/*
create or replace trigger TRG_nickname
    after update of userNickname on Account
    for each row
begin
    update board set b_writer=:new.userNickname
    where b_writer=:old.userNickname;
    update board_comment set c_writer=:new.userNickname
    where c_writer=:old.userNickname;
end;
*/