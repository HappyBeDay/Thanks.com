/* �ּ� update */
Comment on column AbandonedAnimal.animalColorCode is '���� ���� �ڵ�';

/* AbandonedAnimal�� �ߺ��Ǿ��ִ� abColor���� ���� */
alter table AbandonedAnimal drop column LikedAnimalCode;

/* Shelter�� �ִ� �� �̸� ���� drOfficent -> drOfficeCnt */
alter table Shelter rename column drOfficeCnt to drOfficent;

/* ���⵿�� ���̺��� AddressCode �� ���� */
alter table abandonedAnimal drop column AddressCode;

/* NoticeNum�� Comment ���� : �����ȣ */
Comment on column abandonedAnimal.noticeNum is '�����ȣ';

/* NoticeNum�� �� ũ�� ���� */
alter table abandonedAnimal modify noticeNum nvarchar2(30);

/* ���⵿�� ���� ���̺��� ��ȣ�� �ڵ� �� ���� (��������-��) */
alter table AbandonedAnimalReservation drop constraint FK_SHELTER_TO_ABANDONEDANIMALRESERVATION;
alter table AbandonedAnimalReservation drop column ShelterCode;

--------------------------------------------------------------------------------

/* ���⵿�� APi�� ��������Ǿ� �ִ� AbShelter ���̺� ���� */
/* first drop! */
ALTER TABLE AbShelter DROP CONSTRAINT FK_Sido_To_AbShelter;
ALTER TABLE AbShelter DROP CONSTRAINT FK_Sigungu_To_AbShelter;
drop table AbShelter purge;
/* create - relationship */
create table AbShelter (
    abShelterCode number(15) not null,
    sidoCode number(7) not null,
    sigunguCode number(7) not null,
    abSelterTel number(15),
    abSelterAddress nvarchar2(50),
    organize nvarchar2(20),
    managerName nvarchar2(10),
    managerTel number(15)
);
/* comment  */
Comment on table AbShelter is '���⵿��Api�� ��ϵ� ��ȣ��';
Comment on column AbShelter.abShelterCode is '���⵿�� ��ȣ�� �ڵ�';
Comment on column AbShelter.sidoCode is '���⵿�� ��ȣ�� �õ� �ڵ�';
Comment on column AbShelter.sigunguCode is '���⵿�� ��ȣ�� �ñ��� �ڵ�';
Comment on column AbShelter.abSelterTel is '���⵿�� ��ȣ�� ��ȭ��ȣ';
Comment on column AbShelter.abSelterAddress is '���⵿�� ��ȣ�� �ּ�';
Comment on column AbShelter.organize is '���ұ��';
Comment on column AbShelter.managerName is '���⵿�� ����� �̸�';
Comment on column AbShelter.managerTel is '���⵿�� ����� ��ȭ��ȣ';

/* index of AbShelter.abShelterCode : ASC */
create unique index PK_AbShelter on AbShelter(abShelterCode ASC);
/* constraint : PK_AbShelter */
alter table AbShelter add constraint
    PK_AbShelter primary key( abShelterCode);
    
/* relationShip */
Alter table AbShelter
    Add Constraint FK_Sido_To_AbShelter
    Foreign Key ( sidoCode ) References Sido ( sidoCode );
Alter table AbShelter
    Add Constraint FK_Sigungu_To_AbShelter
    Foreign Key ( sigunguCode ) References Sigungu ( sigunguCode );
    
/* AbSelter�� �� �߰� AbSelterName */
alter table AbShelter add abSelterName nvarchar2(20);

--------------------------------------------------------------------------------
/* AnimalColorGroup Table ����!! */
/* First Drop! */
ALTER TABLE AnimalColorGroup DROP CONSTRAINT FK_AnimalColor_To_AnimalColorGroup;
ALTER TABLE AnimalColorGroup DROP CONSTRAINT FK_AbandonedAnimal_To_AnimalColorGroup;
drop table AnimalColorGroup purge;
/* 34. ������ �׷� */
create table AnimalColorGroup (
    ColorGroupCode Number(7) not null,
    AnimalColorCode Number(7) not null,
    AbAnimalCode Number(20) not null
);
/* Comment */
Comment on table AnimalColorGroup is '���� �� �׷�';
Comment on column AnimalColorGroup.ColorGroupCode is '���� �� �׷� �ڵ�';
Comment on column AnimalColorGroup.AnimalColorCode is '���� �� �ڵ�';
Comment on column AnimalColorGroup.AbAnimalCode is '���⵿�� �ڵ�';
/* index of AbShelter.abShelterCode : ASC */
create unique index PK_AnimalColorGroup on AnimalColorGroup(ColorGroupCode ASC);
/* constraint : PK_AbShelter */
alter table AnimalColorGroup add constraint PK_AnimalColorGroup primary key( ColorGroupCode);
    
/* relationShip */
Alter table AnimalColorGroup
    Add Constraint FK_AnimalColor_To_AnimalColorGroup
    Foreign Key ( AnimalColorCode ) References AnimalColor ( AnimalColorCode );
Alter table AnimalColorGroup
    Add Constraint FK_AbandonedAnimal_To_AnimalColorGroup
    Foreign Key ( AbAnimalCode ) References AbandonedAnimal ( AbAnimalCode );

--------------------------------------------------------------------------------

/* 12. Neuter insert data. */
insert into Neuter ( neuterCode, neuterName ) values ( 0 , '�˼�����' );
insert into Neuter ( neuterCode, neuterName ) values ( 1 , '�߼�ȭ��' );
insert into Neuter ( neuterCode, neuterName ) values ( 2 , '�߼�ȭ����' );

/* 11. Sex insert data. */
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 0, '�˼�����', '0');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 1, '����', '2');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 2, '����', '2');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 3, '����+�߼�ȭ', '1');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 4, '����+�߼�ȭ', '1');

--------------------------------------------------------------------------------

/* 34. ������ �߰������ϱ� 1�� ���⵿���� AnimalColorCode -> ColorGroupCode ���� */
Alter table AbandonedAnimal drop constraint FK_ANIMALCOLOR_TO_ABANDONEDANIMAL;
Alter table AbandonedAnimal rename column AnimalColorCode to ColorGroupCode;
Alter table AbandonedAnimal modify ColorGroupCode NUMBER(7);
Alter table AbandonedAnimal 
    add constraint FK_AnimalColorGroup_TO_ABANDONEDANIMAL
    Foreign Key ( ColorGroupCode ) References AnimalColorGroup ( ColorGroupCode );
    
commit;

--------------------------------------------------------------------------------

/*
��Ÿ ���� 21.10.27
ABSELTERTEL
ABSELTERADDRESS
ABSELTERNAME
*/
alter table AbShelter rename column abSelterName to abShelterName;
comment on column ABSHELTER.ABSHELTERNAME is '���⵿�� ��ȣ�� �̸�';

alter table AbShelter rename column ABSELTERADDRESS to abShelterAddress;
alter table AbShelter rename column ABSELTERTEL to abShelterTel;

--------------------------------------------------------------------------------

comment on column Board.replyGroupCode is '�Խñ��� ��� �׷� �ڵ�';
comment on column BoardType.boardTypeName is '�Խ����� �̸�';
/*
CHATMESSAGECODE comment update...
CHATROOMTOTALCNT ����
DELREQUESTDATE comment update
*/
comment on column ChatRoom.CHATMESSAGECODE is 'ä�� �޽��� �ڵ�';
alter table ChatRoom drop column chatRoomTotalCnt;
comment on column DelMemInfoRet.DELREQUESTDATE is '���� ��û��';
comment on column MemberInfo.AUTHORIZECODE is '���� �ڵ�';
comment on column Pet.MEMBERCODE is 'ȸ�� �ڵ� (����)';

alter table SeminarReservation add reservationTime date not null;
comment on column SeminarReservation.reservationTime is '���̳� ��û�ð�';

/* ȸ������ ��¥ �߰� */
alter table memberInfo add signUpDate date;
comment on column memberInfo.signUpDate is 'ȸ�� ���� ��¥';

commit;