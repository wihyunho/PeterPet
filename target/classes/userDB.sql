CREATE TABLE Account(
    userID VARCHAR2(20 char) primary key,
    userPassword VARCHAR2(100 char) not null,
    userName VARCHAR2(20) not null,
    userNickname VARCHAR2(20 char) not null UNIQUE ,
    userProfile VARCHAR2(200 char) not null,
    loginType varchar(10 char) not null
);


delete Account;

select * from Account;

--테이블 삭제
--drop table account;

---------------------------------------

create or replace trigger TRG_nickname
	after update of userNickname on Account
	for each row
begin
	update board set b_writer=:new.userNickname
	where b_writer=:old.userNickname;
    update board_comment set c_writer=:new.userNickname
	where c_writer=:old.userNickname;
end;
--drop trigger TRG_NICKNAME;
------------------------------------------------
