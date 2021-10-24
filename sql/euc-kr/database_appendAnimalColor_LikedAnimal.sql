--append AnimalColor, LikedAnimal

/* reset - AnimalColor */
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_AnimalColor_TO_AbandonedAnimal;
drop sequence AnimalColor_seq;
drop table AnimalColor;
/* create - AnimalColor */
create table AnimalColor (
    animalColorCode NUMBER(7) not null,
    animalColorName NVARCHAR2(20) not null
);
/* sequence for 'animalColorCode' is AnimalColor pk : */
create sequence AnimalColor_seq
    increment by 1
    start with 1
    maxValue 9999999
    cycle;
/* �ּ� */
Comment on table AnimalColor is '���� ����';
Comment on column AnimalColor.animalColorCode is '���� ���� �ڵ�';
Comment on column AnimalColor.animalColorName is '���� ���� �̸�';
/* index of AnimalColor.animalColorCode : ASC*/
create unique index PK_AnimalColor on AnimalColor ( AnimalColorCode ASC );
/* contraint : PK_AnimalColor */
alter table AnimalColor add constraint PK_AnimalColor primary key ( AnimalColorCode );
/* relationShip : AbandonedAnimal.abattention */
alter table AbandonedAnimal rename column abAttention to animalColorCode;
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_AnimalColor_TO_AbandonedAnimal
    FOREIGN KEY ( animalColorCode ) REFERENCES AnimalColor ( animalColorCode );
    
--------------------------------------------------------------------------------

/* reset - AnimalColor */
ALTER TABLE LikedAnimal DROP CONSTRAINT FK_MemberInfo_TO_LikedAnimal;
ALTER TABLE LikedAnimal DROP CONSTRAINT FK_AbandonedAnimal_TO_LikedAnimal;
drop sequence LikedAnimal_seq;
drop table LikedAnimal;
/* create - AnimalColor */
create table LikedAnimal (
    likedAnimalCode NUMBER(7) not null,
    memberCode NUMBER(7) not null,
    abAnimalCode NUMBER(7) not null
);
/* sequence for 'animalColorCode' is AnimalColor pk : */
create sequence LikedAnimal_seq
    increment by 1
    start with 1
    maxValue 9999999
    cycle;
/* �ּ� */
Comment on table LikedAnimal is '���� ����';
Comment on column LikedAnimal.likedAnimalCode is '���� ���� �ڵ�';
Comment on column LikedAnimal.memberCode is 'ȸ�� �ڵ�';
Comment on column LikedAnimal.abAnimalCode is '���� �ڵ�';
/* index of AnimalColor.animalColorCode : ASC*/
create unique index PK_LikedAnimal on LikedAnimal ( likedAnimalCode ASC );
/* contraint : PK_AnimalColor */
alter table LikedAnimal add constraint PK_LikedAnimal primary key ( likedAnimalCode );
/* relationShip */
/* memberCode link */
ALTER TABLE LikedAnimal
    ADD CONSTRAINT FK_MemberInfo_TO_LikedAnimal
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
/* abAnimalCode link */    
ALTER TABLE LikedAnimal
    ADD CONSTRAINT FK_AbandonedAnimal_TO_LikedAnimal
    FOREIGN KEY ( abAnimalCode ) REFERENCES AbandonedAnimal ( abAnimalCode );
--------------------------------------------------------------------------------