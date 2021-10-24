/* authorize data insert */
insert into Authorize (authorizeCode, authorizeName) values (1, 'step 1');
insert into Authorize (authorizeCode, authorizeName) values (2, 'step 2');
insert into Authorize (authorizeCode, authorizeName) values (3, 'step 3');

alter table MemberInfo modify tel null;

insert into MemberInfo (memberCode, id, pw, name, tel, email, authorizeCode)
values (MEMBERINFO_SEQ.nextval, 'admin', '1234', 'AdminCount', '01071526215', 'ehwlfk2@gmail.com', 3);

/* insert into AnimalType 3! */

insert into AnimalType (animalTypeCode, animalTypeName) values (417000, '개');
insert into AnimalType (animalTypeCode, animalTypeName) values (422400, '고양이');
insert into AnimalType (animalTypeCode, animalTypeName) values (429900, '기타');

--append AnimalColor, LikedAnimal

/* reset - AnimalColor */
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_AnimalColor_TO_AbandonedAnimal;
drop sequence AnimalColor_seq;
drop table AnimalColor purge;
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
/* 주석 */
Comment on table AnimalColor is '동물 색상';
Comment on column AnimalColor.animalColorCode is '동물 색상 코드';
Comment on column AnimalColor.animalColorName is '동물 색상 이름';
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
/* 주석 */
Comment on table LikedAnimal is '관심 동물';
Comment on column LikedAnimal.likedAnimalCode is '관심 동물 코드';
Comment on column LikedAnimal.memberCode is '회원 코드';
Comment on column LikedAnimal.abAnimalCode is '동물 코드';
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