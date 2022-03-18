CREATE TABLE Chat(
    chatID INT PRIMARY KEY,
    fromID VARCHAR2(20 char),
    toID VARCHAR2(20 char),
    chatContent VARCHAR2(300 char),
    chatTime DATE,
    chatRead INT,
    isDelete int
);

create sequence Chat_seq;