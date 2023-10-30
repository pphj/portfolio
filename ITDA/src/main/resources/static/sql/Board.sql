drop table board cascade constraints purge;

create table board(
	board_num		number,					--�� ��ȣ
	board_name		varchar2(30),			--�ۼ���
	board_pass		varchar2(30),			--��й�ȣ
	board_subject	varchar2(300),			--����
	board_content	varchar2(4000),			--����
	board_file		varchar2(50),			--÷�� ���� ��(����)
	board_original	varchar2(50),			--÷�� ���� ��
	board_re_ref	number,					--���� �� ��ȣ
	board_re_lev	number,					--�亯 �� ����
	board_re_seq	number,					--�亯 �� ����
	board_readcount	number,					--��ȸ��
	board_date date default sysdate,		--�ۼ� ��¥
	primary key(board_num)
);


select * from board;
