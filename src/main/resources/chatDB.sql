CREATE TABLE Chat(
    chatID INT PRIMARY KEY,
    fromID VARCHAR2(20 char),
    toID VARCHAR2(20 char),
    chatContent VARCHAR2(300 char),
    chatTime DATE,
    chatRead INT,
    isDelete int
);

--drop table chat;
--drop sequence chat_seq;

create sequence Chat_seq;


insert into chat values(chat_seq.nextval,'sszz97','test','testcontent',sysdate,0);



select * from chat;

SELECT * FROM CHAT WHERE chatID IN(SELECT MAX(chatID) FROM CHAT WHERE toID = 'sszz97' OR fromID = 'sszz97' GROUP BY fromID, toID) order by chatTime;
SELECT * FROM CHAT WHERE ((fromID = 'sszz97' AND toID = 'test') OR (fromID =  'test' AND toID ='sszz97')) AND chatID >0 ORDER BY chatTime;

SELECT * FROM CHAT WHERE chattime = (select max(chattime) from chat WHERE ((fromID = 'sszz97' AND toID = 'test') OR (fromID =  'test' AND toID ='sszz97')))

UPDATE Chat SET isDelete = 0 WHERE ((fromID = 'sszz97' AND toID = 'test') OR (fromID =  'test' AND toID ='sszz97'))

UPDATE Chat SET isDelete = 1 WHERE fromID = 'sszz97'AND toID = 'test';
UPDATE Chat SET isDelete = 2 WHERE fromID = 'test' AND toID ='sszz97';

DELETE CHAT WHERE ((fromID = 'sszz97' AND toID = 'test') OR (fromID =  'test' AND toID ='sszz97'));
/*
set @rownum=0
SELECT  @rownum:=@rownum+1 rn ,chatID,fromID,toID,chatContent,chatTime,chatRead FROM CHAT WHERE chatID IN(SELECT MAX(chatID) FROM CHAT WHERE toID = 'sszz97' OR fromID='sszz97' GROUP BY fromID, toID);


SELECT chatID,fromID,toID,chatContent,chatTime,chatRead FROM chat WHERE chatID IN (SELECT max(chatID) FROM chat WHERE toID = 'sszz97' OR fromID = 'sszz97' GROUP BY fromID OR toID);

SELECT * FROM CHAT WHERE chatID IN(SELECT MAX(chatID) FROM CHAT WHERE toID = 'sszz97' OR fromID = 'sszz97' GROUP BY fromID, toID);
*/
