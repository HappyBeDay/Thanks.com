/* 주석 update */
Comment on column AbandonedAnimal.animalColorCode is '동물 색상 코드';

/* AbandonedAnimal에 중복되어있는 abColor열을 삭제 */
alter table AbandonedAnimal drop column LikedAnimalCode;

/* Shelter에 있는 열 이름 변경 drOfficent -> drOfficeCnt */
alter table Shelter rename column drOfficeCnt to drOfficent;

/* 유기동물 테이블에서 AddressCode 열 삭제 */
alter table abandonedAnimal drop column AddressCode;

/* NoticeNum의 Comment 변경 : 공고번호 */
Comment on column abandonedAnimal.noticeNum is '공고번호';

/* NoticeNum의 열 크기 변경 */
alter table abandonedAnimal modify noticeNum nvarchar2(30);

/* 유기동물 예약 테이블에서 보호소 코드 열 삭제 (제약조건-열) */
alter table AbandonedAnimalReservation drop constraint FK_SHELTER_TO_ABANDONEDANIMALRESERVATION;
alter table AbandonedAnimalReservation drop column ShelterCode;

--------------------------------------------------------------------------------

/* 유기동물 APi에 직접연결되어 있는 AbShelter 테이블 생성 */
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
Comment on table AbShelter is '유기동물Api에 등록된 보호소';
Comment on column AbShelter.abShelterCode is '유기동물 보호소 코드';
Comment on column AbShelter.sidoCode is '유기동물 보호소 시도 코드';
Comment on column AbShelter.sigunguCode is '유기동물 보호소 시군구 코드';
Comment on column AbShelter.abSelterTel is '유기동물 보호소 전화번호';
Comment on column AbShelter.abSelterAddress is '유기동물 보호소 주소';
Comment on column AbShelter.organize is '관할기관';
Comment on column AbShelter.managerName is '유기동물 담당자 이름';
Comment on column AbShelter.managerTel is '유기동물 담당자 전화번호';

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
    
/* AbSelter에 열 추가 AbSelterName */
alter table AbShelter add abSelterName nvarchar2(20);

--------------------------------------------------------------------------------
/* AnimalColorGroup Table 생성!! */
/* First Drop! */
ALTER TABLE AnimalColorGroup DROP CONSTRAINT FK_AnimalColor_To_AnimalColorGroup;
ALTER TABLE AnimalColorGroup DROP CONSTRAINT FK_AbandonedAnimal_To_AnimalColorGroup;
drop table AnimalColorGroup purge;
/* 34. 동물색 그룹 */
create table AnimalColorGroup (
    ColorGroupCode Number(7) not null,
    AnimalColorCode Number(7) not null,
    AbAnimalCode Number(20) not null
);
/* Comment */
Comment on table AnimalColorGroup is '동물 색 그룹';
Comment on column AnimalColorGroup.ColorGroupCode is '동물 색 그룹 코드';
Comment on column AnimalColorGroup.AnimalColorCode is '동물 색 코드';
Comment on column AnimalColorGroup.AbAnimalCode is '유기동물 코드';
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
insert into Neuter ( neuterCode, neuterName ) values ( 0 , '알수없음' );
insert into Neuter ( neuterCode, neuterName ) values ( 1 , '중성화함' );
insert into Neuter ( neuterCode, neuterName ) values ( 2 , '중성화안함' );

/* 11. Sex insert data. */
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 0, '알수없음', '0');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 1, '남성', '2');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 2, '여성', '2');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 3, '남성+중성화', '1');
insert into Sex ( sexCode, sexName, NeuterCode ) values ( 4, '여성+중성화', '1');

--------------------------------------------------------------------------------

/* 34. 동물색 추가했으니까 1번 유기동물에 AnimalColorCode -> ColorGroupCode 변경 */
Alter table AbandonedAnimal drop constraint FK_ANIMALCOLOR_TO_ABANDONEDANIMAL;
Alter table AbandonedAnimal rename column AnimalColorCode to ColorGroupCode;
Alter table AbandonedAnimal 
    add constraint FK_AnimalColorGroup_TO_ABANDONEDANIMAL
    Foreign Key ( ColorGroupCode ) References AnimalColorGroup ( ColorGroupCode );
    
commit;