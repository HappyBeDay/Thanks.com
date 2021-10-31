/* animalgroupcolor_seq 생성 */ 
create sequence AnimalColorGroup_seq
    increment by 1
    start with 1
    maxValue 9999999
    cycle;
    
alter table board drop column boardNum;

alter table animalColorGroup drop constraint FK_ABANDONEDANIMAL_TO_ANIMALCOLORGROUP;
alter table animalColorGroup drop constraint FK_ANIMALCOLOR_TO_ANIMALCOLORGROUP;
alter table AbandonedAnimal drop constraint FK_ANIMALCOLORGROUP_TO_ABANDONEDANIMAL;

drop table animalcolorgroup purge; 

drop table animalColor purge;

alter table AbandonedAnimal modify COLORGROUPCODE nvarchar2(20);
alter table AbandonedAnimal rename column colorGroupcode to color;


alter table AbandonedAnimal drop column ANIMALTYPECODE;
alter table AbandonedAnimal drop column abComment;

/* State 상태에 따른 테이블 생성 */
create table AbState (
    stateCode number(7) not null,
    stateName nvarchar2(10) not null
);
/* sequence 생성 */
create sequence AbState_seq
    increment by 1
    start with 1
    maxValue 9999999
    cycle;
/* comment */
comment on table AbState is '유기동물 상태';
comment on COLUMN AbState.stateCode is '유기동물 상태코드';
comment on COLUMN AbState.stateName is '유기동물 상태 명';
/* index */
CREATE UNIQUE INDEX PK_AbState ON AbState ( stateCode ASC );
/* contraint : pk_AbandonedAnimal */
ALTER TABLE AbState ADD CONSTRAINT PK_AbState PRIMARY KEY ( stateCode );

/* 유기동물에 외래키 등록 */
alter table AbandonedAnimal modify abState number(7);
alter table AbandonedAnimal rename column abState to stateCode;
ALTER TABLE AbandonedAnimal 
    ADD CONSTRAINT FK_AbState_TO_AbandonedAnimal
    FOREIGN KEY ( stateCode ) REFERENCES AbState ( stateCode );
    
/* 보호소 정보를 유기동물 보호소 정보로 유기동물 테이블 연결을 변경해준다. */
alter table AbandonedAnimal drop constraint FK_SHELTER_TO_ABANDONEDANIMAL; --기존연결
alter table AbandonedAnimal rename column shelterCode to abShelterCode; --이름변경
alter table AbandonedAnimal modify abShelterCode number(15);
alter table AbandonedAnimal 
    add constraint FK_ABSHELTER_TO_ABANDONEDANIMAL
    foreign key (ABSHELTERCODE) references AbShelter (ABSHELTERCODE); --제약조건추가
  

alter table animalType rename to breedType;
alter table breedType rename column ANIMALTYPECODE to breedTypeCode;
alter table breedType rename column ANIMALTYPENAME to breedTypeName;
alter table AbandonedAnimal add breedTypeCode number(7);
alter table AbandonedAnimal 
    add constraint FK_BREEDTYPE_TO_ABANDONEDANIMAL
    foreign key ( breedTypeCode ) references BreedType ( breedTypeCode );
comment on column AbandonedAnimal.BREEDTYPECODE is '축종';

/* URI Type 변경 -> String */
alter table AbandonedAnimal drop column abThumbPic;
alter table AbandonedAnimal add abThumbPic nvarchar2(100);

alter table AbandonedAnimal drop column abPic;
alter table AbandonedAnimal add abPic nvarchar2(100);

/* 중성화 혹은 성별 정규화 삭제... */
drop table neuter purge;
alter table AbandonedAnimal drop constraint FK_SEX_TO_ABANDONEDANIMAL;
alter table AbandonedAnimal modify sexCode nvarchar2(1);
alter table AbandonedAnimal rename column sexCode to sex;

alter table witness drop constraint FK_SEX_TO_WITNESS;
alter table witness modify sexCode nvarchar2(1);
alter table witness rename column sexCode to sex;

alter table pet drop constraint FK_SEX_TO_PET;
alter table pet modify sexCode nvarchar2(1);
alter table pet rename column sexCode to sex;

alter table sex drop constraint PK_SEX;
drop table sex purge;

/* 유기동물에 중성화 여부 열 추가 */
alter table AbandonedAnimal add neuter nvarchar2(1);
comment on column AbandonedAnimal.neuter is '중성화 여부';

/* 품종 시퀀스 생성 */
create sequence Breed_seq
    increment by -1
    start with -1
    maxValue -1
    minValue -9999999
    cycle;

