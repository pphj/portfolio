drop table member cascade constraints purge;

create table member(					
	id			varchar2(12),			--���̵�
	password	varchar2(10),			--��й�ȣ
	name		varchar2(15),			--�̸�
	age			number(2),				--����
	gender		varchar2(3),			--����
	email		varchar2(30),			--�̸���
	primary key(id)

);
