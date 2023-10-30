drop table comments cascade constraints purge;
					
create table comments(		
	num			number				primary key,			--�� ��ȣ
	id			varchar2(30)		references member(id),	--ȸ���� ����� �ۼ��� �� �ְ� ����
	content		varchar2(200),								--�� ����
	reg_date	date,										--��� ��¥
	board_num	number		references board(board_num) on delete cascade
);
