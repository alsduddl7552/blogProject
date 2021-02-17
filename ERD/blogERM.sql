
/* Drop Tables */

DROP TABLE comment_table CASCADE CONSTRAINTS;
DROP TABLE board_table CASCADE CONSTRAINTS;
DROP TABLE category_table CASCADE CONSTRAINTS;
DROP TABLE user_table CASCADE CONSTRAINTS;


/* Drop Sequences */

DROP SEQUENCE SEQ_board_table;
DROP SEQUENCE SEQ_category_table;
DROP SEQUENCE SEQ_comment_table;
DROP SEQUENCE SEQ_user_table;



/* Create Sequences */

CREATE SEQUENCE SEQ_board_table INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE SEQ_category_table INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE SEQ_comment_table INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE SEQ_user_table INCREMENT BY 1 START WITH 1 NOCACHE;


/* Create Tables */

CREATE TABLE board_table
(
	-- �Խñ� ������ȣ
	board_uid number NOT NULL,
	-- �Խ��� ����
	board_title varchar2(200) NOT NULL,
	-- �Խ��� ����
	board_content varchar2(2000) NOT NULL,
	-- �Խ��� �ۼ� ��¥
	board_regdate date DEFAULT sysdate,
	-- �Խ��� �ۼ���
	board_writer varchar2(20),
	-- ī�װ� ������ȣ
	cate_uid number DEFAULT 0 NOT NULL,
	PRIMARY KEY (board_uid)
);

DELETE FROM board_table WHERE cate_uid = 2;

		INSERT INTO board_table
			(board_uid, board_title, board_content, board_regdate, board_writer, cate_uid)
		VALUES
			(SEQ_category_table.nextval, '김미녕2', '김민영 내용2', sysdate, '안신혁2', 1);


CREATE TABLE category_table
(
	-- ī�װ� ������ȣ
	cate_uid number DEFAULT 0 NOT NULL,
	-- ī�װ� �̸�
	cate_name varchar2(20) NOT NULL,
	PRIMARY KEY (cate_uid)
);


CREATE TABLE comment_table
(
	-- ��� ������ȣ
	comment_uid number DEFAULT 0 NOT NULL,
	-- ��� ����
	comment_content varchar2(200) NOT NULL,
	-- ��� �ۼ��ð�
	comment_regdate date DEFAULT sysdate,
	-- ��� �ۼ���
	comment_writer varchar2(20),
	-- �Խñ� ������ȣ
	board_uid number NOT NULL,
	PRIMARY KEY (comment_uid)
);


CREATE TABLE user_table
(
	-- ���� ������ȣ
	user_uid number DEFAULT 0 NOT NULL,
	-- ���� ���̵�
	user_id varchar2(20) NOT NULL,
	-- ���� ��й�ȣ
	user_pw varchar2(20) NOT NULL,
	-- ���� �̸�
	user_name varchar2(20),
	-- ���� �޴�����ȣ
	user_phone varchar2(50),
	-- ���� �̸���
	user_mail varchar2(100),
	PRIMARY KEY (user_uid)
);



/* Create Foreign Keys */

ALTER TABLE comment_table
	ADD FOREIGN KEY (board_uid)
	REFERENCES board_table (board_uid)
;


ALTER TABLE board_table
	ADD FOREIGN KEY (cate_uid)
	REFERENCES category_table (cate_uid)
;



/* Comments */

COMMENT ON COLUMN board_table.board_uid IS '�Խñ� ������ȣ';
COMMENT ON COLUMN board_table.board_title IS '�Խ��� ����';
COMMENT ON COLUMN board_table.board_content IS '�Խ��� ����';
COMMENT ON COLUMN board_table.board_regdate IS '�Խ��� �ۼ� ��¥';
COMMENT ON COLUMN board_table.board_writer IS '�Խ��� �ۼ���';
COMMENT ON COLUMN board_table.cate_uid IS 'ī�װ� ������ȣ';
COMMENT ON COLUMN category_table.cate_uid IS 'ī�װ� ������ȣ';
COMMENT ON COLUMN category_table.cate_name IS 'ī�װ� �̸�';
COMMENT ON COLUMN comment_table.comment_uid IS '��� ������ȣ';
COMMENT ON COLUMN comment_table.comment_content IS '��� ����';
COMMENT ON COLUMN comment_table.comment_regdate IS '��� �ۼ��ð�';
COMMENT ON COLUMN comment_table.comment_writer IS '��� �ۼ���';
COMMENT ON COLUMN comment_table.board_uid IS '�Խñ� ������ȣ';
COMMENT ON COLUMN user_table.user_uid IS '���� ������ȣ';
COMMENT ON COLUMN user_table.user_id IS '���� ���̵�';
COMMENT ON COLUMN user_table.user_pw IS '���� ��й�ȣ';
COMMENT ON COLUMN user_table.user_name IS '���� �̸�';
COMMENT ON COLUMN user_table.user_phone IS '���� �޴�����ȣ';
COMMENT ON COLUMN user_table.user_mail IS '���� �̸���';

SELECT * FROM BOARD_TABLE;

DELETE BOARD_TABLE;

