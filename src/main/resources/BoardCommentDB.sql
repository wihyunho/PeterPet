create table board_comment(
    c_no number(5) primary key,
    b_no number(5) REFERENCES board(b_no) ON DELETE CASCADE,
    c_writer VARCHAR2(20 char),
    c_date date not null,
    c_parent number(5),
    c_ischange number(1),	--코멘트 상태 0=수정전, 1=수정후, -1=삭제
    c_comment varchar2(1000 char) not null   
);

create sequence COMMENT_SEQ;

select * from BOARD_COMMENT;