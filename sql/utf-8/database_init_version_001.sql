-- <1> 관계삭제
-- 1. 유기동물 : AbandonedAnimal 
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Breed_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_AnimalType_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Shelter_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Sex_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Address_TO_AbandonedAnimal;

-- 2. 회원 : MemberInfo
ALTER TABLE MemberInfo DROP CONSTRAINT FK_Authorize_TO_MemberInfo;
ALTER TABLE MemberInfo DROP CONSTRAINT FK_Pet_TO_MemberInfo;
ALTER TABLE MemberInfo DROP CONSTRAINT FK_Address_TO_MemberInfo;

-- 3. 세미나 : Seminar
ALTER TABLE Seminar DROP CONSTRAINT FK_Lecturer_TO_Seminar;

-- 4. 통계 : Stats

-- 5. 시도 : Sido

-- 6. 보호소 : Shelter
ALTER TABLE Shelter DROP CONSTRAINT FK_Address_TO_Shelter;

-- 7. 축종그룹 : AnimalGroup
ALTER TABLE AnimalGroup DROP CONSTRAINT FK_Shelter_TO_AnimalGroup;
ALTER TABLE AnimalGroup DROP CONSTRAINT FK_AnimalType_TO_AnimalGroup;

-- 8. 축종 : AnimailType

-- 9. 품종 : Breed
ALTER TABLE Breed DROP CONSTRAINT FK_AnimalType_TO_BreedCode;

-- 10. 목격-실종 : Witness
ALTER TABLE Witness DROP CONSTRAINT FK_Sex_TO_Witness;
ALTER TABLE Witness DROP CONSTRAINT FK_AnimalType_TO_Witness;
ALTER TABLE Witness DROP CONSTRAINT FK_Breed_TO_Witness;
ALTER TABLE Witness DROP CONSTRAINT FK_Address_TO_Witness;

-- 11. 성별 : Sex
ALTER TABLE Sex DROP CONSTRAINT FK_Neuter_TO_Sex;

-- 12. 중성화 : Neuter

-- 13. 유기 동물 예약 : AbandonedAnimalReservation
ALTER TABLE AbandonedAnimalReservation DROP CONSTRAINT FK_AbandonedAnimal_TO_AbandonedAnimalReservation;
ALTER TABLE AbandonedAnimalReservation DROP CONSTRAINT FK_Shelter_TO_AbandonedAnimalReservation;
ALTER TABLE AbandonedAnimalReservation DROP CONSTRAINT FK_MemberInfo_TO_AbandonedAnimalReservation;

-- 14. 세미나 예약 : SeminarReservation
ALTER TABLE SeminarReservation DROP CONSTRAINT FK_MemberInfo_TO_SeminarReservation;
ALTER TABLE SeminarReservation DROP CONSTRAINT FK_Seminar_TO_SeminarReservation;

-- 15. 게시판 : BoardType

-- 16. 게시글 : Board
ALTER TABLE Board DROP CONSTRAINT FK_MemberInfo_TO_Board;
ALTER TABLE Board DROP CONSTRAINT FK_BoardType_TO_Board;
ALTER TABLE Board DROP CONSTRAINT FK_Reply_TO_Board;

-- 17.댓글그룹 : ReplyGroup
ALTER TABLE ReplyGroup DROP CONSTRAINT FK_Board_TO_ReplyGroup;
ALTER TABLE ReplyGroup DROP CONSTRAINT FK_Reply_TO_ReplyGroup;

-- 18. 댓글 : Reply

-- 19. 권한 : Authorize

-- 20. 채팅메세지 : ChatMessage
ALTER TABLE ChatMessage DROP CONSTRAINT FK_ChatRoom_TO_ChatMessage;

-- 21. 채팅룸 : ChatRoom
ALTER TABLE ChatRoom DROP CONSTRAINT FK_ChatRoom_TO_ChatRoom;
ALTER TABLE ChatRoom DROP CONSTRAINT FK_ChatMessage_TO_ChatRoom;

-- 22. 채팅룸인원 : ChatRoomMember
ALTER TABLE ChatRoomMember DROP CONSTRAINT FK_MemberInfo_TO_ChatRoomMember;
ALTER TABLE ChatRoomMember DROP CONSTRAINT FK_ChatRoom_TO_ChatRoomMember;

-- 23. 시군구 : Sigungu
ALTER TABLE Sigungu DROP CONSTRAINT FK_Sido_TO_Sigungu;

-- 24. 반려동물 : Pet
ALTER TABLE Pet DROP CONSTRAINT FK_MemberInfo_TO_Pet;
ALTER TABLE Pet DROP CONSTRAINT FK_Sex_TO_Pet;
ALTER TABLE Pet DROP CONSTRAINT FK_Breed_TO_Pet;

-- 25. 회원정보 삭제유보 : DelMemberInfoRet
ALTER TABLE DelMemInfoRet DROP CONSTRAINT FK_MemberInfo_TO_DelMemInfoRet;

-- 26. 강사 : Lecturer
ALTER TABLE Lecturer DROP CONSTRAINT FK_MemberInfo_TO_Lecturer;

-- 27. 양육 : ParentingService
ALTER TABLE ParentingService DROP CONSTRAINT FK_MemberInfo_TO_ParentingService;
ALTER TABLE ParentingService DROP CONSTRAINT FK_Gallery_TO_ParentingService;
ALTER TABLE ParentingService DROP CONSTRAINT FK_AbandonedAnimal_TO_ParentingService;

-- 28. 갤러리 : Gallery
ALTER TABLE Gallery DROP CONSTRAINT FK_ParentingService_TO_Gallery;

-- 29. 도로명주소 : RoadAddress

-- 30. 주소 : Address
ALTER TABLE Address DROP CONSTRAINT FK_Sigungu_TO_Address;
ALTER TABLE Address DROP CONSTRAINT FK_Sigungu_TO_Address;

-- <2> 테이블 삭제
/* 1. 유기동물 */
drop table AbandonedAnimal purge;
drop index PK_AbandonedAnimal;

/* 2. 회원 */
drop table MemberInfo purge;
drop sequence MemberInfo_seq;
drop index PK_MemberInfo;

/* 3. 세미나 */
drop table Seminar purge;
drop sequence Seminar_seq;
drop index PK_Seminar;

/* 4. 통계 */
drop table Stats purge;
drop index PK_Status;

/* 5. 시도 */
drop table Sido purge;
drop index PK_Seminar;

/* 6. 세미나 */
drop table Shelter purge;
drop sequence Shelter_seq;
drop index PK_Shelter;

/* 7. 축종그룹 */
drop table AnimalGroup purge;
drop sequence AnimalGroup_seq;
drop index PK_AnimalGroup;

/* 8. 축종 */
drop table AnimalType purge;
drop index PK_AnimalType;

/* 9. 품종 */
drop table Breed purge;
drop index PK_BreedCode;

/* 10. 목격 & 실종 */
drop table Witness purge;
drop sequence Witness_seq;
drop index PK_Witness;

/* 11. 성별 */
drop table Sex purge;
drop index PK_Sex;

/* 12. 중성화 */
drop table Neuter purge;
drop index PK_Neuter;

/* 13. 유기동물 예약 */
drop table AbandonedAnimalReservation purge;
drop sequence AbandonedAnimalReservation_seq;
drop index PK_AbandonedAnimalReservation;

/* 14. 세미나 예약 */
drop table SeminarReservation purge;
drop sequence SeminarReservation_seq;
drop index PK_SeminarReservation;

/* 15. 게시판 (게시글 종류) */
drop table BoardType purge;
drop sequence BoardType_seq;
drop index PK_BoardType;

/* 16. 게시글 */
drop table Board purge;
drop sequence Board_seq;
drop index PK_Board;

/* 17. 세미나 */
drop table ReplyGroup purge;
drop sequence ReplyGroup_seq;
drop index PK_ReplyGroup;

/* 18. 댓글 */
drop table Reply purge;
drop sequence Reply_seq;
drop index PK_Reply;

/* 19. 권한 */
drop table Authorize purge;
drop index PK_Authorize;

/* 20. 세미나 */
drop table ChatMessage purge;
drop sequence ChatMessage_seq;
drop index PK_ChatMessage;

/* 21. 채팅룸 */
drop table ChatRoom purge;
drop sequence ChatRoom_seq;
drop index PK_ChatRoom;

/* 22. 채팅룸인원 */
drop table ChatRoomMember purge;
drop sequence ChatRoomMember_seq;
drop index PK_ChatRoomMember;

/* 23. 시군구 */
drop table Sigungu purge;
drop index PK_Sigungu;

/* 24. 반려동물 */
drop table Pet purge;
drop sequence Pet_seq;
drop index PK_Pet;

/* 25. 회원정보 삭제유보 */
drop table DelMemInfoRet purge;
drop index PK_DelMemInfoRet;

/* 26. 강사 */
drop table Lecturer purge;
drop sequence Lecturer_seq;
drop index PK_Lecturer;

/* 27. 양육 서비스 */
drop table ParentingService purge;
drop sequence ParentingService_seq;
drop index PK_ParentingService;

/* 28. Gallery */
drop table Gallery purge;
drop sequence Gallery_seq;
drop index PK_Gallery;

/* 29. 도로명주소 */
drop table RoadAddress purge;
drop sequence RoadAddress_seq;
drop index PK_RoadAddress;

/* 30. 주소 */
drop table Address purge;
drop sequence Address_seq;
drop index PK_Address;

-- <3> 테이블 생성
/* 1. 유기동물 : AbandonedAnimal */
CREATE TABLE AbandonedAnimal (
    abAnimalCode NUMBER(20) NOT NULL, /* 유기번호 코드 */
    abThumbPic UriType NOT NULL, /* 썸네일 사진 */
    findDate DATE NOT NULL, /* 발견 날짜 */
    findLoc NVARCHAR2(100) NOT NULL, /* 발견 장소 */
    breedCode NUMBER(7) NOT NULL, /* 품종코드 */
    animalTypeCode NUMBER(7) NOT NULL, /* 축종코드 */
    abColor NVARCHAR2(10) NOT NULL, /* 색상 */
    abAge NUMBER(7,2) NOT NULL, /* 나이 */
    abWeight NUMBER(7,2) NOT NULL, /* 체중 */
    noticeNum NVARCHAR2(30) NOT NULL, /* 공고 번호 */
    noticeStartDate DATE NOT NULL, /* 공고 시작일 */
    noticeEndDate DATE NOT NULL, /* 공고 종료일 */
    abPic UriType NOT NULL, /* 사진 */
    abState NVARCHAR2(7) NOT NULL, /* 상태 */
    abFeat NVARCHAR2(100), /* 특징 */
    abComment NVARCHAR2(100), /* 특이사항 */
    abAttention NUMBER, /* 관심동물 */
    sexCode NUMBER(1) DEFAULT 0 NOT NULL, /* 성별 코드 */
    shelterCode NUMBER(7) NOT NULL, /* 보호소 코드 */
    addressCode NUMBER(7) /* 주소 코드 */
);
/* No need for sequence */
/* comment on is '주석' */
COMMENT ON TABLE AbandonedAnimal IS '유기동물 : AbandonedAnimal';
COMMENT ON COLUMN AbandonedAnimal.abAnimalCode IS '유기번호 코드';
COMMENT ON COLUMN AbandonedAnimal.abThumbPic IS '썸네일 사진';
COMMENT ON COLUMN AbandonedAnimal.findDate IS '접수일';
COMMENT ON COLUMN AbandonedAnimal.findLoc IS '발견 장소';
COMMENT ON COLUMN AbandonedAnimal.BreedCode IS '품종코드';
COMMENT ON COLUMN AbandonedAnimal.animalTypeCode IS '축종코드';
COMMENT ON COLUMN AbandonedAnimal.abColor IS '색상';
COMMENT ON COLUMN AbandonedAnimal.abAge IS '나이';
COMMENT ON COLUMN AbandonedAnimal.abWeight IS '몸무게';
COMMENT ON COLUMN AbandonedAnimal.noticeNum IS 'unique';
COMMENT ON COLUMN AbandonedAnimal.noticeStartDate IS '공고 시작일';
COMMENT ON COLUMN AbandonedAnimal.noticeEndDate IS '공고 종료일';
COMMENT ON COLUMN AbandonedAnimal.abPic IS '사진';
COMMENT ON COLUMN AbandonedAnimal.abState IS '보호중, 종료(안락사, 자연사, 반환)';
COMMENT ON COLUMN AbandonedAnimal.abFeat IS '특징';
COMMENT ON COLUMN AbandonedAnimal.abComment IS '있는 경우 없는 경우가 있음';
COMMENT ON COLUMN AbandonedAnimal.abAttention IS '관심 동물 하트 모양 클릭';
COMMENT ON COLUMN AbandonedAnimal.SexCode IS '성별 코드';
COMMENT ON COLUMN AbandonedAnimal.shelterCode IS '보호소 번호';
COMMENT ON COLUMN AbandonedAnimal.addressCode IS '주소 코드';
/* index of AbandonedAnimal.abAnimalCode : ASC */
CREATE UNIQUE INDEX PK_AbandonedAnimal ON AbandonedAnimal ( abAnimalCode ASC );
/* contraint : pk_AbandonedAnimal */
ALTER TABLE AbandonedAnimal ADD CONSTRAINT PK_AbandonedAnimal PRIMARY KEY ( abAnimalCode );
--------------------------------------------------------------------------------
/* 2. 회원 */
CREATE TABLE MemberInfo (
    memberCode NUMBER(7) NOT NULL, /* 회원코드 */
    id NVARCHAR2(20) NOT NULL, /* 아이디 */
    pw NVARCHAR2(50) NOT NULL, /* 비밀번호 */
    name NVARCHAR2(10), /* 회원이름 */
    tel NUMBER(12) NOT NULL, /* 전화번호 */
    email NVARCHAR2(50) NOT NULL, /* 이메일 */
    authorizeCode NUMBER(1) DEFAULT 0 NOT NULL,
    birth DATE, /* 생년월일 */
    petCode NUMBER(7), /* 반려동물 코드 */
    addressCode NUMBER(7) /* 주소 코드 */
);
/* sequence for 'memberCode' is MemberInfo pk :  */
create sequence MemberInfo_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE MemberInfo IS '회원 정보';
COMMENT ON COLUMN MemberInfo.memberCode IS '회원 코드';
COMMENT ON COLUMN MemberInfo.id IS '회원 아이디';
COMMENT ON COLUMN MemberInfo.pw IS '회원 비밀번호';
COMMENT ON COLUMN MemberInfo.name IS '회원 이름';
COMMENT ON COLUMN MemberInfo.tel IS '회원 전화번호';
COMMENT ON COLUMN MemberInfo.email IS '회원 이메일';
COMMENT ON COLUMN MemberInfo.birth IS '회원 생년월일';
COMMENT ON COLUMN MemberInfo.petCode IS '반려동물 코드';
COMMENT ON COLUMN MemberInfo.addressCode IS '주소 코드';
/* index of MemberInfo.memberCode : ASC */
CREATE UNIQUE INDEX PK_MemberInfo ON MemberInfo ( memberCode ASC );
/* contraint : PK_MemberInfo */
ALTER TABLE MemberInfo ADD CONSTRAINT PK_MemberInfo PRIMARY KEY (memberCode);
--------------------------------------------------------------------------------
/* 3. 세미나 */
CREATE TABLE Seminar (
    seminarCode NUMBER(7) NOT NULL, 
    lectName NVARCHAR2(20) NOT NULL, 
    lectLoc NVARCHAR2(10), 
    lectSeatCnt NUMBER NOT NULL, 
    lecturerCode NUMBER(7),
    lectDate DATE NOT NULL, 
    lectStartTime TIMESTAMP,
    lectEndTime TIMESTAMP,
    lectPic UriType,
    lectContent NVARCHAR2(100)
);
/* sequence for 'seminarCode' is Seminar pk :  */
create sequence Seminar_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Seminar IS '세미나';
COMMENT ON COLUMN Seminar.seminarCode IS '세미나 코드';
COMMENT ON COLUMN Seminar.lectName IS '강의 이름';
COMMENT ON COLUMN Seminar.lectLoc IS '장소';
COMMENT ON COLUMN Seminar.lectSeatCnt IS '좌석개수';
COMMENT ON COLUMN Seminar.lecturerCode IS '강사코드';
COMMENT ON COLUMN Seminar.lectDate IS '강의 날짜';
COMMENT ON COLUMN Seminar.lectStartTime IS '강의 시작 시간';
COMMENT ON COLUMN Seminar.lectEndTime IS '강의 종료 시간';
COMMENT ON COLUMN Seminar.lectPic IS '사진';
COMMENT ON COLUMN Seminar.lectContent IS '설명';
/* index of Seminar.seminarCode : ASC */
CREATE UNIQUE INDEX PK_Seminar ON Seminar ( seminarCode ASC );
/* contraint : pk_Seminar */
ALTER TABLE Seminar ADD CONSTRAINT PK_Seminar PRIMARY KEY ( seminarCode );
--------------------------------------------------------------------------------
/* 4. 통계 */ 
CREATE TABLE Stats (
    dayDate TIMESTAMP NOT NULL, /* 일별 날짜 */
    joinShelterCnt NUMBER(5) NOT NULL, /* 입소 개체수 */
    returnHomeCnt NUMBER(5) NOT NULL, /* 귀가 개체수 */
    adoptedCnt NUMBER(5) NOT NULL, /* 입양된 개체수 */
    euthDeathCnt NUMBER(5) NOT NULL, /* 안락사 개체수 */
    naturalDeathCnt NUMBER(5) NOT NULL /* 자연사 개체수 */
);
/* No need for Sequence */
/* 주석 */
COMMENT ON TABLE Stats IS '통계';
COMMENT ON COLUMN Stats.dayDate IS '일별 날짜';
COMMENT ON COLUMN Stats.joinShelterCnt IS '입소 개체수';
COMMENT ON COLUMN Stats.returnHomeCnt IS '귀가 개체수';
COMMENT ON COLUMN Stats.returnHomeCnt IS '입양된 개체수';
COMMENT ON COLUMN Stats.euthDeathCnt IS '안락사 개체수';
COMMENT ON COLUMN Stats.naturalDeathCnt IS '자연사 개체수';
/* index of Stats.sidoCode : ASC */
CREATE UNIQUE INDEX PK_Stats ON Stats ( dayDate ASC );
/* contraint PK_Stats of Stats */
ALTER TABLE Stats ADD CONSTRAINT PK_Stats PRIMARY KEY ( dayDate );
--------------------------------------------------------------------------------
/* 5. 시도 */
CREATE TABLE Sido (
   sidoCode NUMBER(7) NOT NULL, /* 시도 코드 */
   sidoCodeName NVARCHAR2(50) NOT NULL /* 코드 명 */
);
/* No need for Sequence : 공공데이터 포털 기반으로 작성 */
/* 주석 */
COMMENT ON TABLE Sido IS '시도';
COMMENT ON COLUMN Sido.sidoCode IS '공공데이터 기반 17개 시도존재';
COMMENT ON COLUMN Sido.sidoCodeName IS '시도 이름';
/* index of Sido.sidoCode : ASC */
CREATE UNIQUE INDEX PK_Sido ON Sido ( sidoCode ASC );
/* contraint PK_Sido of Sido */
ALTER TABLE Sido ADD CONSTRAINT PK_Sido PRIMARY KEY ( sidoCode );
--------------------------------------------------------------------------------
/* 6. 보호소 */
CREATE TABLE Shelter (
    shelterCode NUMBER(7) NOT NULL, /* 보호소 코드, 공공데이터 포털에 없다. */
    shelterName NVARCHAR2(50) NOT NULL, /* 동물보호센터명 */
    mgmtAgencyName NVARCHAR2(20) NOT NULL, /* 관리기관명 */
    shelterType NVARCHAR2(10) NOT NULL, /* 동물보호센터유형 */
    shelterDesigDate DATE NOT NULL, /* 동물보호센터지정일자 */
    weekdayStartTime TIMESTAMP NOT NULL, /* 평일운영시작시각 */
    weekdayEndTime TIMESTAMP NOT NULL, /* 평일운영종료시각 */
    weekdayAdoptStartTime TIMESTAMP, /* 평일분양시작시각 */
    weekdayAdoptEndTime TIMESTAMP, /* 평일분양종료시각 */
    weekendStartTime TIMESTAMP, /* 주말운영시작시각 */
    weekendEndTime TIMESTAMP, /* 주말운영종료시각 */
    weekendAdoptStartTime TIMESTAMP, /* 주말분양시작시각 */
    weekendAdoptEndTime TIMESTAMP, /* 주말분양종료시각 */
    holiday NVARCHAR2(20) NOT NULL, /* 휴무일 */
    vetCnt NUMBER(5) NOT NULL, /* 수의사인원수 */
    specMgrCnt NUMBER(5) NOT NULL, /* 사양관리사인원수 */
    drOfficeCnt NUMBER(5), /* 진료실수 */
    careRmCnt NUMBER(5), /* 사육실수 */
    quarantineRmCnt NUMBER(5), /* 격리실수 */
    foodStrgRmCnt NUMBER(5), /* 사료보관실수 */
    vehicleCnt NUMBER(5), /* 구조운반용차량보유대수 */
    tel NUMBER(15) NOT NULL, /* 전화번호 */
    dataDate DATE NOT NULL, /* 데이터기준일자 */
    addressCode NUMBER(7) /* 주소 코드 */
);
/* sequence for 'Seminar' is Seminar pk :  */
create sequence Shelter_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */    
COMMENT ON TABLE Shelter IS '보호소';
COMMENT ON COLUMN Shelter.shelterCode IS '보호소 코드 - 211020(306)';
COMMENT ON COLUMN Shelter.shelterName IS '보호소 명';
COMMENT ON COLUMN Shelter.mgmtAgencyName IS '관리기관명';
COMMENT ON COLUMN Shelter.shelterType IS '동물보호센터유형';
COMMENT ON COLUMN Shelter.shelterDesigDate IS '동물보호센터지정일자';
COMMENT ON COLUMN Shelter.weekdayStartTime IS 'HH:MM 평일운영시작시각';
COMMENT ON COLUMN Shelter.weekdayEndTime IS 'HH:MM 평일운영종료시각 ';
COMMENT ON COLUMN Shelter.weekdayAdoptStartTime IS 'HH:MM 평일분양시작시각 ';
COMMENT ON COLUMN Shelter.weekdayAdoptEndTime IS 'HH:MM 평일분양종료시각 ';
COMMENT ON COLUMN Shelter.weekendStartTime IS 'HH:MM 주말운영시작시각 ';
COMMENT ON COLUMN Shelter.weekendEndTime IS 'HH:MM 주말운영종료시각 ';
COMMENT ON COLUMN Shelter.weekendAdoptStartTime IS 'HH:MM 주말분양시작시각 ';
COMMENT ON COLUMN Shelter.weekendAdoptEndTime IS 'HH:MM 주말분양종료시각 ';
COMMENT ON COLUMN Shelter.holiday IS '휴무일';
COMMENT ON COLUMN Shelter.vetCnt IS '수의사인원수';
COMMENT ON COLUMN Shelter.specMgrCnt IS '사양관리사인원수';
COMMENT ON COLUMN Shelter.drOfficeCnt IS '진료실수';
COMMENT ON COLUMN Shelter.careRmCnt IS '사육실수';
COMMENT ON COLUMN Shelter.quarantineRmCnt IS '격리실수';
COMMENT ON COLUMN Shelter.foodStrgRmCnt IS '사료보관실수';
COMMENT ON COLUMN Shelter.vehicleCnt IS '구조운반용차량보유대수';
COMMENT ON COLUMN Shelter.tel IS '보호소 전화번호';
COMMENT ON COLUMN Shelter.dataDate IS '데이터기준일자';
COMMENT ON COLUMN Shelter.addressCode IS '주소 코드';
/* index of Shelter.shelterCode : ASC */
CREATE UNIQUE INDEX PK_Shelter ON Shelter ( shelterCode ASC );
/* constraint : PK_Shelter of Shelter */
ALTER TABLE Shelter ADD CONSTRAINT PK_Shelter PRIMARY KEY ( shelterCode );
--------------------------------------------------------------------------------
/* 7. 축종그룹 */
create table AnimalGroup (
    animalGroupCode NUMBER(7) not null, /* 외래키 to Shelter.shelterCode */
    shelterCode NUMBER(7) not null,
    animalTypeCode NUMBER(7) not null
);
/* sequence for animalGroupCode is animalGroup pk : */
create sequence AnimalGroup_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON COLUMN AnimalGroup.animalGroupCode IS '축종 그룹 코드';
COMMENT ON COLUMN AnimalGroup.shelterCode IS '보호소 코드 외래키';
COMMENT ON COLUMN AnimalGroup.animalTypeCode IS '축종 코드 외래키';
/* index of animalGroup.animalGroupCode : ASC */
CREATE UNIQUE INDEX PK_AnimalGroup ON AnimalGroup ( animalGroupCode ASC );
/* contraint : PK_Sido */
ALTER TABLE AnimalGroup ADD CONSTRAINT PK_AnimalGroup PRIMARY KEY ( animalGroupCode );
--------------------------------------------------------------------------------
/* 8. 축종 */
CREATE TABLE AnimalType (
   animalTypeCode NUMBER(7) NOT NULL, /* 축종코드 */
   animalTypeName NVARCHAR2(20) NOT NULL /* 축종명 */
);
/* No need for sequence */
/* 주석 */
COMMENT ON TABLE AnimalType IS '축종';
COMMENT ON COLUMN AnimalType.animalTypeCode IS '축종 코드, 공공데이터 기반 211018(3)';
COMMENT ON COLUMN AnimalType.animalTypeName IS '축종 명, like 개, 고양이...';
/* index of AnimalType.animalTypeCode : ASC */
CREATE UNIQUE INDEX PK_AnimalType ON AnimalType ( animalTypeCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE AnimalType ADD CONSTRAINT PK_AnimalType PRIMARY KEY ( animalTypeCode );
--------------------------------------------------------------------------------
/* 9. 품종 */
CREATE TABLE Breed (
   BreedCode NUMBER(7) NOT NULL, /* 품종코드 */
   breedName NVARCHAR2(20) NOT NULL, /* 품종명 */
   animalTypeCode NUMBER(7) NOT NULL /* 축종코드 */
);
/* No need for sequence */
COMMENT ON TABLE Breed IS '품종코드';
COMMENT ON COLUMN Breed.BreedCode IS '품종코드';
COMMENT ON COLUMN Breed.breedName IS '품종명';
COMMENT ON COLUMN Breed.animalTypeCode IS '축종 외래키';
/* index of BreedCode.BreedCode : ASC */
CREATE UNIQUE INDEX PK_BreedCode ON Breed ( BreedCode ASC );
/* contraint : PK_BreedCode */
ALTER TABLE Breed ADD CONSTRAINT PK_BreedCode PRIMARY KEY ( BreedCode );
--------------------------------------------------------------------------------
/* 10. 목격 - 실종 */
CREATE TABLE Witness (
    witnessCode NUMBER(7) NOT NULL, /* 목격 - 실종 코드 */
    sexCode NUMBER(1) DEFAULT 0 NOT NULL, /* 성별 코드 */
    animalTypeCode NUMBER(7), /* 축종코드 */
    BreedCode NUMBER(7), /* 품종코드 */
    witMisPic UriType, /* 사진 */
    witMisColor NVARCHAR2(10), /* 색상 */
    witMisAge NVARCHAR2(10), /* 나이 */
    witMisState NVARCHAR2(10) NOT NULL, /* 상태 */
    witMisDate DATE, /* 발견/실종 날짜 */
    witMisLoc NVARCHAR2(100), /* 발견/실종 장소 */
    witMisFeat NVARCHAR2(100), /* 특징 */
    witMisComment NVARCHAR2(100), /* 특징사항 */
    addressCode NUMBER(7) /* 주소 코드 */
);  
/* sequence for {columnName} is {tableName} pk : */
create sequence Witness_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Witness IS '목격 - 실종';
COMMENT ON COLUMN Witness.witnessCode IS '목격 - 실종 코드';
COMMENT ON COLUMN Witness.sexCode IS '성별 코드 0, 1, 2';
COMMENT ON COLUMN Witness.animalTypeCode IS '축종코드';
COMMENT ON COLUMN Witness.BreedCode IS '품종코드';
COMMENT ON COLUMN Witness.witMisPic IS '사진';
COMMENT ON COLUMN Witness.witMisColor IS '색상';
COMMENT ON COLUMN Witness.witMisAge IS '나이';
COMMENT ON COLUMN Witness.witMisState IS '상태 : ex) 보호, 사망, 목격, 실종';
COMMENT ON COLUMN Witness.witMisDate IS '발견/실종 날짜';
COMMENT ON COLUMN Witness.witMisLoc IS '발견/실종 장소';
COMMENT ON COLUMN Witness.witMisFeat IS '특징';
COMMENT ON COLUMN Witness.witMisComment IS '특징사항';
COMMENT ON COLUMN Witness.addressCode IS '주소 코드';
/* index of Witness.witnessCode : ASC */
CREATE UNIQUE INDEX PK_Witness ON Witness ( witnessCode ASC );
/* contraint : PK_Witness */
ALTER TABLE Witness ADD CONSTRAINT PK_Witness PRIMARY KEY ( witnessCode );
--------------------------------------------------------------------------------
/* 11. 성별 */
CREATE TABLE Sex (
    sexCode NUMBER(1) DEFAULT 0 NOT NULL, /* 성별 코드 */
    sexName NVARCHAR2(20) DEFAULT 0 NOT NULL, /* 성별명 */
    neuterCode NUMBER(1) DEFAULT 0 /* 중성화 코드 */
);
/* No need for sequence */
COMMENT ON TABLE Sex IS '성별';
COMMENT ON COLUMN Sex.sexCode IS '성별 코드 : 1, 2, 3, 4';
COMMENT ON COLUMN Sex.sexName IS '성별 명';
COMMENT ON COLUMN Sex.neuterCode IS '중성화 코드';
/* index of Sex.sexCode : ASC */
CREATE UNIQUE INDEX PK_Sex ON Sex ( sexCode ASC );
/* contraint : PK_Sex */
ALTER TABLE Sex ADD CONSTRAINT PK_Sex PRIMARY KEY ( sexCode );
--------------------------------------------------------------------------------
/* 12. 중성화 */
CREATE TABLE Neuter (
    neuterCode NUMBER(1) DEFAULT 0 NOT NULL, /* 중성화 코드 */
    neuterName NVARCHAR2(20) DEFAULT 'False' NOT NULL /* 코드 명 */
);
/* No need for sequence */
COMMENT ON TABLE Neuter IS '중성화';
COMMENT ON COLUMN Neuter.neuterCode IS '중성화 코드, 중성화 수술 유무, 0:false, 1:true';
COMMENT ON COLUMN Neuter.neuterName IS '중성화 유무';
/* index of Neuter.neuterCode : ASC */
CREATE UNIQUE INDEX PK_Neuter ON Neuter ( neuterCode ASC );
/* contraint : PK_Neuter */
ALTER TABLE Neuter ADD CONSTRAINT PK_Neuter PRIMARY KEY ( neuterCode );
--------------------------------------------------------------------------------
/* 13. 유기동물 예약 */
CREATE TABLE AbandonedAnimalReservation (
   animalReservationCode NUMBER(7) NOT NULL, /* 예약 코드 */
   abAnimalCode NUMBER(20) NOT NULL, /* 유기번호 코드 */
   shelterCode NUMBER(7) NOT NULL, /* 보호소 코드 */
   memberCode NUMBER(7) NOT NULL, /* 회원코드 */
   animalReservationDate TIMESTAMP /* 예약 신청 */
);
/* sequence for animalReservationCode is AbandonedAnimalReservation pk : */
create sequence AbandonedAnimalReservation_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE AbandonedAnimalReservation IS '유기동물 예약';
COMMENT ON COLUMN AbandonedAnimalReservation.animalReservationCode IS '예약 코드';
COMMENT ON COLUMN AbandonedAnimalReservation.abAnimalCode IS '유기번호 코드';
COMMENT ON COLUMN AbandonedAnimalReservation.shelterCode IS '보호소 코드';
COMMENT ON COLUMN AbandonedAnimalReservation.memberCode IS '회원코드';
COMMENT ON COLUMN AbandonedAnimalReservation.animalReservationDate IS '예약 신청';
/* index of AbandonedAnimalReservation.animalReservationCode : ASC */
CREATE UNIQUE INDEX PK_AbandonedAnimalReservation 
    ON AbandonedAnimalReservation ( animalReservationCode ASC );
/* contraint : PK_AbandonedAnimalReservation */
ALTER TABLE AbandonedAnimalReservation ADD 
    CONSTRAINT PK_AbandonedAnimalReservation PRIMARY KEY ( animalReservationCode );
--------------------------------------------------------------------------------
/* 14. 세미나 예약 */
CREATE TABLE SeminarReservation (
   seminarReservationCode NUMBER(7) NOT NULL, /* 예약 코드 */
   seminarCode NUMBER(7) NOT NULL, /* 세미나 코드 */
   memberCode NUMBER(7) NOT NULL /* 회원코드 */
);
/* sequence for {columnName} is {tableName} pk : */
create sequence SeminarReservation_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE SeminarReservation IS '세미나 예약';
COMMENT ON COLUMN SeminarReservation.seminarReservationCode IS '예약 코드';
COMMENT ON COLUMN SeminarReservation.seminarCode IS '세미나 코드';
COMMENT ON COLUMN SeminarReservation.memberCode IS '회원코드';
/* index of SeminarReservation.seminarReservationCode : ASC */
CREATE UNIQUE INDEX PK_SeminarReservation
   ON SeminarReservation ( seminarReservationCode ASC );
/* contraint : PK_SeminarReservation */
ALTER TABLE SeminarReservation ADD
    CONSTRAINT PK_SeminarReservation PRIMARY KEY ( seminarReservationCode );
--------------------------------------------------------------------------------
/* 15. 게시판 (게시글 종류) */
create table BoardType (
    boardTypeCode NUMBER(7) NOT NULL,
    boardTypeName NVARCHAR2(20) NOT NULL,
    boardTotalCnt NUMBER(7) NOT NULL
);
/* sequence for boardTypeCode is BoardType pk : */
create sequence BoardType_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */ 
comment on table BoardType is '게시판, 게시글 종류';
comment on column BoardType.boardTypeCode is '게시판 코드';
comment on column BoardType.boardTypeCode is '게시판 이름';
comment on column BoardType.boardTotalCnt is '게시글 총 개수';
/* index of BoardType.boardTypeCode : ASC */
CREATE UNIQUE INDEX PK_BoardType ON BoardType ( boardTypeCode ASC );
/* contraint : PK_BoardType */
ALTER TABLE BoardType ADD CONSTRAINT PK_BoardType PRIMARY KEY ( boardTypeCode );
--------------------------------------------------------------------------------
/* 16. 게시글 */
CREATE TABLE Board (
    boardCode NUMBER(7) NOT NULL, /* 게시글 코드 */
    memberCode NUMBER(7) NOT NULL, /* 회원코드 - 작성자 */
    boardTitle NVARCHAR2(20) NOT NULL, /* 제목 */
    boardContent NVARCHAR2(100) NOT NULL, /* 내용 */
    boardPic UriType, /* 사진 */
    boardDate DATE NOT NULL, /* 작성날짜 */
    boardHit NUMBER(7) DEFAULT 0 NOT NULL, /* 조회수 */
    boardLike NUMBER(7) DEFAULT 0 NOT NULL, /* 좋아요 수 */
    boardTypeCode NUMBER(7) NOT NULL, /* 게시판 코드 */
    boardNum NUMBER(7) NOT NULL, /* 글 번호 */
    replyGroupCode NUMBER(7) /* 댓글 코드 */
);
/* sequence for boardCode is Board pk : */
create sequence Board_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Board IS '게시글';
COMMENT ON COLUMN Board.boardCode IS '게시글 코드';
COMMENT ON COLUMN Board.memberCode IS '회원코드 - 작성자';
COMMENT ON COLUMN Board.boardTitle IS '제목';
COMMENT ON COLUMN Board.boardContent IS '내용';
COMMENT ON COLUMN Board.boardPic IS '사진';
COMMENT ON COLUMN Board.boardDate IS '작성날짜';
COMMENT ON COLUMN Board.boardHit IS '조회수';
COMMENT ON COLUMN Board.boardLike IS '좋아요 수';
COMMENT ON COLUMN Board.boardTypeCode IS '게시판 코드';
COMMENT ON COLUMN Board.boardNum IS '글 번호';
/* index of Board.boardCode : ASC */
CREATE UNIQUE INDEX PK_Board ON Board ( boardCode ASC );
/* contraint : PK_Board */
ALTER TABLE Board ADD CONSTRAINT PK_Board PRIMARY KEY ( boardCode );
--------------------------------------------------------------------------------
/* 17. 댓글 그룹 */
create table ReplyGroup (
    replyGroupCode NUMBER(7) not null,
    boardCode NUMBER(7) not null,
    replyCode NUMBER(7) not null
);
/* sequence for replyGroupCode is replyGroup pk : */
create sequence ReplyGroup_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
comment on table ReplyGroup is '댓글그룹, 댓글루트 모음';
comment on column ReplyGroup.replyGroupCode is '댓글그룹 코드';
comment on column ReplyGroup.boardCode is '댓글그룹(댓글들)이 달린 게시글 코드, 외래키';
comment on column ReplyGroup.replyCode is '댓글그룹(댓글들)의 루트 댓글 코드, 외래키';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_ReplyGroup ON ReplyGroup ( replyGroupCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE ReplyGroup ADD CONSTRAINT PK_ReplyGroup PRIMARY KEY ( replyGroupCode );
--------------------------------------------------------------------------------
/* 18. 댓글 */
CREATE TABLE Reply (
    replyCode NUMBER(7) NOT NULL, /* 댓글 코드 */
    replyWriter NVARCHAR2(10), /* 작성자 */
    replyContent NVARCHAR2(100), /* 내용 */
    replyPic UriType, /* 사진 */
    replyDateTime TIMESTAMP, /* 작성날짜,시간 */
    replyLike NUMBER(7), /* 댓글 좋아요 수 */
    replyCodeRoot NUMBER(7), /* 루트 댓글 Code */
    replyPrintStep Number(7), /* 댓글 출력 순서 */
    replyCodeParentsCount NUMBER(7), /* 부모 댓글 수 */
    replyCodeParentsNumber NUMBER(7), /* 부모 댓글 Code */
    replyCodeChildCount NUMBER(7) /* 자식 댓글 수 */
);
/* sequence for replyCode is Reply pk : */
create sequence Reply_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Reply IS '댓글';
COMMENT ON COLUMN Reply.replyCode IS '댓글 코드';
COMMENT ON COLUMN Reply.replyWriter IS '작성자';
COMMENT ON COLUMN Reply.replyContent IS '내용';
COMMENT ON COLUMN Reply.replyPic IS '사진';
COMMENT ON COLUMN Reply.replyDateTime IS '작성날짜,시간';
COMMENT ON COLUMN Reply.replyLike IS '댓글 좋아요 수';
COMMENT ON COLUMN Reply.replyCodeRoot IS '루트 댓글 Code';
COMMENT ON COLUMN Reply.replyPrintStep IS '댓글 출력 순서';
COMMENT ON COLUMN Reply.replyCodeParentsCount IS '부모 댓글 수';
COMMENT ON COLUMN Reply.replyCodeParentsNumber IS '부모 댓글 Code';
COMMENT ON COLUMN Reply.replyCodeChildCount IS '자식 댓글 수';
/* index of Reply.replyCode : ASC */
CREATE UNIQUE INDEX PK_Reply ON Reply ( replyCode ASC );
/* contraint : PK_Reply */
ALTER TABLE Reply ADD CONSTRAINT PK_Reply PRIMARY KEY ( replyCode );
--------------------------------------------------------------------------------
/* 19. 권한 */
create table Authorize (
    authorizeCode NUMBER(1) default 1 not null,
    authorizeName NVARCHAR2(10) not null
);
/* No need for sequence */
comment on table Authorize is '권한 종류 테이블';
comment on column Authorize.authorizeCode is '권한 코드, 클수록 강하다, guest = 0';
comment on column Authorize.authorizeName is '권한 이름';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_Authorize ON Authorize ( authorizeCode ASC );
/* contraint : PK_Authorize */
ALTER TABLE Authorize ADD CONSTRAINT PK_Authorize PRIMARY KEY ( authorizeCode );
--------------------------------------------------------------------------------
/* 20. 채팅메세지 */
CREATE TABLE ChatMessage (
    chatMessageCode NUMBER(7) NOT NULL, /* 채팅메시지 코드 */
    ChatRoomCode NUMBER(7) NOT NULL, /* 채팅룸 코드 */
    content LONG /* 내용 */
);
/* sequence for chatMessageCode is ChatMessage pk : */
create sequence ChatMessage_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE ChatMessage IS '채팅메세지';
COMMENT ON COLUMN ChatMessage.chatMessageCode IS '채팅메시지 코드';
COMMENT ON COLUMN ChatMessage.ChatRoomCode IS '채팅룸 코??';
COMMENT ON COLUMN ChatMessage.content IS 
    'timestamp + member.name + message 개행문자로 구분지어 채팅내용이 문자열로 저장';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_ChatMessage ON ChatMessage ( chatMessageCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE ChatMessage ADD CONSTRAINT PK_ChatMessage PRIMARY KEY ( chatMessageCode );
--------------------------------------------------------------------------------
/* 21. 채팅룸 */
CREATE TABLE ChatRoom (
    ChatRoomCode NUMBER(7) NOT NULL, /* 채팅룸 코드 */
    chatRoomName NVARCHAR2(20) not null, /* 채팅룸 이름 */
    chatMessageCode NUMBER(7) not null,
    chatRoomMemberCode NUMBER(7) not null, /* 채팅룸 인원 코드 */
    ChatRoomTotalCnt NUMBER(3) not null /* 채팅룸 총 인원 */
);
/* sequence for ChatRoomCode is ChatRoom pk : */
create sequence ChatRoom_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE ChatRoom IS '채팅룸';
COMMENT ON COLUMN ChatRoom.ChatRoomCode IS '채팅룸 코드';
COMMENT ON COLUMN ChatRoom.chatRoomName IS '채팅룸 이름, 1대1 채팅시 아이디 표기';
COMMENT ON COLUMN ChatRoom.chatRoomMemberCode IS '채팅룸 인원 코드';
COMMENT ON COLUMN ChatRoom.chatRoomMemberCode IS '채팅룸 총 인원, max 99';
/* index of ChatRoom.ChatRoomCode : ASC */
CREATE UNIQUE INDEX PK_ChatRoom ON ChatRoom ( ChatRoomCode ASC );
/* contraint : PK_ChatRoom */
ALTER TABLE ChatRoom ADD CONSTRAINT PK_ChatRoom PRIMARY KEY ( ChatRoomCode );
-------------------------------------------------------------------------------- 
/* 22. 채팅룸인원 */
CREATE TABLE ChatRoomMember (
    chatRoomMemberCode NUMBER(7) NOT NULL, /* 인원 코드 */
    ChatRoomCode NUMBER(7), /* 채팅룸 코드 */
    memberCode NUMBER(7) /* 회원코드 */
);
/* sequence for chatRoomMemberCode is ChatRoomMember pk : */
create sequence ChatRoomMember_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE ChatRoomMember IS '채팅룸 인원';
COMMENT ON COLUMN ChatRoomMember.chatRoomMemberCode IS '채팅원 인원 코드';
COMMENT ON COLUMN ChatRoomMember.memberCode IS '채팅룸 인원의 회원 코드';
COMMENT ON COLUMN ChatRoomMember.ChatRoomCode IS '채팅룸 코드';
/* index of ChatRoomMember.chatRoomMemberCode : ASC */
CREATE UNIQUE INDEX PK_ChatRoomMember ON ChatRoomMember ( chatRoomMemberCode ASC );
/* contraint : PK_ChatRoomMember */
ALTER TABLE ChatRoomMember ADD CONSTRAINT PK_ChatRoomMember PRIMARY KEY ( chatRoomMemberCode );
--------------------------------------------------------------------------------
/* 23. 시군구 */
CREATE TABLE Sigungu (
   sigunguCode NUMBER(7) NOT NULL, /* 시군구 코드 */
   sigunguCodeName NVARCHAR2(50) NOT NULL, /* 코드 명 */
   sidoCode NUMBER(7) NOT NULL /* 시도 코드 */
);
/* No need for sequence */
COMMENT ON TABLE Sigungu IS '시군구, 공공데이터 기반';
COMMENT ON COLUMN Sigungu.sigunguCode IS '시군구 코드';
COMMENT ON COLUMN Sigungu.sigunguCodeName IS '시군구 이름';
COMMENT ON COLUMN Sigungu.sidoCode IS '시도 코드';
/* index of Sigungu.sigunguCode : ASC */
CREATE UNIQUE INDEX PK_Sigungu ON Sigungu ( sigunguCode ASC );
/* contraint : Sigungu.sigunguCode */
ALTER TABLE Sigungu ADD CONSTRAINT PK_Sigungu PRIMARY KEY ( sigunguCode );
--------------------------------------------------------------------------------
/* 24. 반려동물 */
CREATE TABLE Pet (
   petCode NUMBER(7) NOT NULL, /* 반려동물 코드 */
   memberCode NUMBER(7) NOT NULL,
   petName NVARCHAR2(10), /* 이름 */
   BreedCode NUMBER(7), /* 품종코드 */
   sexCode NUMBER(1) DEFAULT 0 /* 성별 코드 */
);
/* sequence for petCode is Pet pk : */
create sequence Pet_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Pet IS '반려동물';
COMMENT ON COLUMN Pet.petCode IS '반려동물 코드';
COMMENT ON COLUMN Pet.petName IS '이름';
COMMENT ON COLUMN Pet.BreedCode IS '품종코드, +축종 코드';
COMMENT ON COLUMN Pet.sexCode IS '성별 코드, +중성화 코드';
/* index of Pet.petCode : ASC */
CREATE UNIQUE INDEX PK_Pet ON Pet ( petCode ASC );
/* contraint : PK_Pet */
ALTER TABLE Pet ADD CONSTRAINT PK_Pet PRIMARY KEY ( petCode );
--------------------------------------------------------------------------------
/* 25. 회원정보 삭제유보 */
CREATE TABLE DelMemInfoRet (
   memberCode NUMBER(7) NOT NULL, /* 회원코드 */
   delRequestDate TIMESTAMP not null, /* 삭제신청일 */
   delDate TIMESTAMP not null /* 삭제예정일 */
);
/* No need for sequence */
COMMENT ON TABLE DelMemInfoRet IS '회원정보 삭제유보';
COMMENT ON COLUMN DelMemInfoRet.memberCode IS '회원코드';
COMMENT ON COLUMN DelMemInfoRet.DelDate IS '삭제신청일';
COMMENT ON COLUMN DelMemInfoRet.delDate IS '삭제예정일';
/* index of DelMemInfoRet.memberCode : ASC */
CREATE UNIQUE INDEX PK_DelMemInfoRet ON DelMemInfoRet ( memberCode ASC );
/* contraint : PK_DelMemInfoRet */
ALTER TABLE DelMemInfoRet ADD CONSTRAINT PK_DelMemInfoRet PRIMARY KEY ( memberCode );
--------------------------------------------------------------------------------
/* 26. 강사 */
CREATE TABLE Lecturer (
   lecturerCode NUMBER(7) NOT NULL, /* 강사코드 */
   lecturerName NVARCHAR2(10) not null,
   lecturerHist NVARCHAR2(300), /* 강사연혁 */
   memberCode NUMBER(7) /* 회원코드 */
);
/* sequence for {columnName} is {tableName} pk : */
create sequence Lecturer_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Lecturer IS '강사';
COMMENT ON COLUMN Lecturer.lecturerCode IS '강사코드';
COMMENT ON COLUMN Lecturer.lecturerHist IS '강사연혁';
COMMENT ON COLUMN Lecturer.memberCode IS '회원코드';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_Lecturer ON Lecturer ( lecturerCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE Lecturer ADD CONSTRAINT PK_Lecturer PRIMARY KEY ( lecturerCode );
--------------------------------------------------------------------------------
/* 27. 양육 서비스 */
CREATE TABLE ParentingService (
    ParentingServiceCode NUMBER(7) NOT NULL, /* 양육 코드 */
    memberCode NUMBER(7) not null, /* 회원 코드 */
    paydate date, /* 최근 결제일 */
    GalleryCode NUMBER(7) NOT NULL, /* 갤러리 코드 */
    abAnimalCode NUMBER(20), /* 유기번호 코드 */
    GalleryTotalCnt NUMBER(7) not null
);
/* sequence for ParentingServiceCode is ParentingService pk : */
create sequence ParentingService_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE ParentingService IS '양육 서비스 ';
COMMENT ON COLUMN ParentingService.ParentingServiceCode IS '양육 코드';
COMMENT ON COLUMN ParentingService.memberCode IS '회원 코드';
COMMENT ON COLUMN ParentingService.paydate IS '결제 일';
COMMENT ON COLUMN ParentingService.GalleryCode IS '갤러리 코드';
COMMENT ON COLUMN ParentingService.abAnimalCode IS '유기번호 코드';
COMMENT ON COLUMN ParentingService.GalleryTotalCnt IS '갤러리 총 갯수';
/* index of ParentingService.ParentingServiceCode : ASC */
CREATE UNIQUE INDEX PK_ParentingService ON ParentingService ( ParentingServiceCode ASC );
/* contraint : PK_ParentingService */
ALTER TABLE ParentingService ADD 
    CONSTRAINT PK_ParentingService PRIMARY KEY ( ParentingServiceCode );
--------------------------------------------------------------------------------      
/* 28. Gallery */
create table Gallery (
    GalleryCode NUMBER(7) not null, 
    ParentingServiceCode NUMBER(7) not null, /* 양육 서비스 코드 */
    GalleryWriter NUMBER(7) not null, /* 작성자 (본인 혹은 관리자) */
    GalleryTitle NVARCHAR2(20), /* 제목 (생략 가능) */
    GalleryContent NVARCHAR2(100), /* 내용 */
    GalleryPic UriType, /* 사진 */
    GalleryDate DATE NOT NULL, /* 작성날짜 */
    GalleryHit NUMBER(7) NOT NULL, /* 조회수 */
    GalleryLike NUMBER(7) /* 좋아요 수 */
);
/* sequence for Gallery is GalleryCode pk : */
create sequence Gallery_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Gallery IS '양육의 갤러리 ';
COMMENT ON COLUMN Gallery.GalleryCode IS '갤러리 코드';
COMMENT ON COLUMN Gallery.ParentingServiceCode IS '양육 서비스 코드';
COMMENT ON COLUMN Gallery.GalleryWriter IS '갤러리 작성자, 본인 혹은 관리자';
COMMENT ON COLUMN Gallery.GalleryTitle IS '갤러리 제목';
COMMENT ON COLUMN Gallery.GalleryContent IS '갤러리 내용';
COMMENT ON COLUMN Gallery.GalleryPic IS '갤러리 사진';
COMMENT ON COLUMN Gallery.GalleryDate IS '갤러리 작성 날짜';
COMMENT ON COLUMN Gallery.GalleryHit IS '갤러리 조회수';
COMMENT ON COLUMN Gallery.GalleryLike IS '갤러리 좋아요 수';
/* index of Gallery.GalleryCode : ASC */
CREATE UNIQUE INDEX PK_Gallery ON Gallery ( GalleryCode ASC );
/* contraint : PK_ParentingService */
ALTER TABLE Gallery ADD 
    CONSTRAINT PK_Gallery PRIMARY KEY ( GalleryCode );
--------------------------------------------------------------------------------
/* 29. 도로명주소 */
CREATE TABLE RoadAddress (
   roadNameCode NUMBER(12) NOT NULL, /* 도로명 주소 코드 */
   roadAddr VARCHAR2(80) NOT NULL, /* 전체 도로명 주소 */
   roadAddrPt1 VARCHAR2(40), /* 도로명주소(참고항목 제외) */
   roadAddrPt2 VARCHAR2(40), /* 도로명주소 참고항목 */
   jibunAddr NUMBER(7), /* 지번 정보 */
   engAddr VARCHAR2(40), /* 도로명주소(영문) */
   zipNum NUMBER(7) , /* 우편번호 */
   admDivCode NUMBER(10), /* 행정구역코드 */
   roadMgmtCode NUMBER(7), /* 도로명코드 */
   bldgMgmtNum VARCHAR2(40), /* 건물관리번호 (API PK) */
   detailBldgNumList VARCHAR2(100), /* 상세건물명 */
   bldgNum VARCHAR2(40), /* 건물명 */
   aptYesNo VARCHAR2(5), /* 공동주택여부  */
   sidoName VARCHAR2(40), /* 시도명 */
   sigunguName VARCHAR2(40), /* 시군구명 */
   eupmyundongdName VARCHAR2(40), /* 법정읍면동명 */
   liName VARCHAR2(40), /* 법정리명 */
   roadName VARCHAR2(40), /* 도로명 */
   undergroundYesNo VARCHAR2(5), /* 지하여부 */
   bldgMainNum NUMBER(7), /* 건물본번 */
   buldSubNum NUMBER(7) /* 건물부번 */
);
/* No need for sequence */
/* 주소 */
COMMENT ON TABLE RoadAddress IS '도로명주소 (시군구 5 + 도로명번호 7)';
COMMENT ON COLUMN RoadAddress.roadNameCode IS '도로명 주소 코드';
COMMENT ON COLUMN RoadAddress.roadAddr IS '전체 도로명 주소';
COMMENT ON COLUMN RoadAddress.roadAddrPt1 IS '도로명주소(참고항목 제외)';
COMMENT ON COLUMN RoadAddress.roadAddrPt2 IS '도로명주소 참고항목';
COMMENT ON COLUMN RoadAddress.jibunAddr IS '지번 정보';
COMMENT ON COLUMN RoadAddress.engAddr IS '도로명주소(영문)';
COMMENT ON COLUMN RoadAddress.zipNum IS '우편번호';
COMMENT ON COLUMN RoadAddress.admDivCode IS '행정구역코드';
COMMENT ON COLUMN RoadAddress.roadMgmtCode IS '도로명코드';
COMMENT ON COLUMN RoadAddress.bldgMgmtNum IS '건물관리번호';
COMMENT ON COLUMN RoadAddress.detailBldgNumList IS '상세건물명';
COMMENT ON COLUMN RoadAddress.bldgNum IS '건물명';
COMMENT ON COLUMN RoadAddress.aptYesNo IS '공동주택여부 (1:공동주택, 0: 비공동주택)';
COMMENT ON COLUMN RoadAddress.sidoName IS '시도명';
COMMENT ON COLUMN RoadAddress.sigunguName IS '시군구명';
COMMENT ON COLUMN RoadAddress.eupmyundongdName IS '법정읍면동명';
COMMENT ON COLUMN RoadAddress.liName IS '법정리명';
COMMENT ON COLUMN RoadAddress.roadName IS '도로명';
COMMENT ON COLUMN RoadAddress.undergroundYesNo IS '지하여부 (0:지상, 1:지하)';
COMMENT ON COLUMN RoadAddress.bldgMainNum IS '건물본번';
COMMENT ON COLUMN RoadAddress.buldSubNum IS '건물부번 (부번이 없는 경우 0)';
/* index of RoadAddress.roadNameCode : ASC */
CREATE UNIQUE INDEX PK_RoadAddress ON RoadAddress ( roadNameCode ASC );
/* contraint : PK_RoadAddress */
ALTER TABLE RoadAddress ADD CONSTRAINT PK_RoadAddress PRIMARY KEY ( roadNameCode );
--------------------------------------------------------------------------------
/* 30. 주소 <- 시군구 코드랑 도로명 주소를 연결해주는 테이블... */
CREATE TABLE Address (
    addressCode NUMBER(7) NOT NULL,
    roadNameCode NUMBER(7), /* 도로명 주소 코드 */
    sigunguCode NUMBER(7) /* 시군구 코드 */
);
/* sequence for addressCode is Address pk : */
create sequence Address_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* 주석 */
COMMENT ON TABLE Address IS '주소, 시군구 + 도로명';
COMMENT ON COLUMN Address.addressCode IS '주소 코드';
COMMENT ON COLUMN Address.roadNameCode IS '도로명 주소 코드';
COMMENT ON COLUMN Address.sigunguCode IS '시군구 코드';
/* index of Address.roadNameCode : ASC */
CREATE UNIQUE INDEX PK_Address ON Address ( addressCode ASC );
/* contraint : PK_Address */
ALTER TABLE Address ADD CONSTRAINT PK_Address PRIMARY KEY ( addressCode );
--------------------------------------------------------------------------------

-- <4> 관계 설정
-- 1. 유기동물 : AbandonedAnimal 
/* 1-1 품종코드 */
ALTER TABLE AbandonedAnimal 
    ADD CONSTRAINT FK_Breed_TO_AbandonedAnimal
    FOREIGN KEY ( BreedCode ) REFERENCES Breed ( BreedCode );
    
/* 1-2 축종코드 */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_AnimalType_TO_AbandonedAnimal
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );
        
/* 1-4 보호소코드 */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_Shelter_TO_AbandonedAnimal
    FOREIGN KEY ( shelterCode ) REFERENCES Shelter ( shelterCode );

/* 1-3 성별코드 */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_Sex_TO_AbandonedAnimal
    FOREIGN KEY ( sexCode ) REFERENCES Sex ( sexCode );

/* 1-5 주소코드 */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_Address_TO_AbandonedAnimal 
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 2. 회원 : MemberInfo
/* 2-1 권한코드 */
ALTER TABLE MemberInfo
    ADD CONSTRAINT FK_Authorize_TO_MemberInfo
    FOREIGN KEY ( authorizeCode ) REFERENCES Authorize ( authorizeCode );

/* 2-2 반려동물코드 */
ALTER TABLE MemberInfo
    ADD CONSTRAINT FK_Pet_TO_MemberInfo
    FOREIGN KEY ( petCode ) REFERENCES Pet ( petCode );

/* 2-3 주소코드 */
ALTER TABLE MemberInfo
    ADD CONSTRAINT FK_Address_TO_MemberInfo
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 3. 세미나 : Seminar
/* 3-1 강사코드 */
ALTER TABLE Seminar
    ADD CONSTRAINT FK_Lecturer_TO_Seminar
    FOREIGN KEY ( lecturerCode ) REFERENCES Lecturer ( lecturerCode );
--------------------------------------------------------------------------------
-- 4. 통계 : Stats
--------------------------------------------------------------------------------
-- 5. 시도 : Sido
--------------------------------------------------------------------------------
-- 6. 보호소 : Shelter
/* 6-1 주소코드*/
ALTER TABLE Shelter
    ADD CONSTRAINT FK_Address_TO_Shelter
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 7. 축종그룹 : AnimalGroup
/* 7-1 보호소코드 */
ALTER TABLE AnimalGroup
    ADD CONSTRAINT FK_Shelter_TO_AnimalGroup
    FOREIGN KEY ( shelterCode ) REFERENCES Shelter ( shelterCode );

/* 7-2 축종코드 */
ALTER TABLE AnimalGroup
    ADD CONSTRAINT FK_AnimalType_TO_AnimalGroup
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );
--------------------------------------------------------------------------------
-- 8. 축종 : AnimailType
--------------------------------------------------------------------------------
-- 9. 품종 : Breed
ALTER TABLE Breed 
    ADD CONSTRAINT FK_AnimalType_TO_BreedCode 
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );
--------------------------------------------------------------------------------
-- 10. 목격-실종 : Witness
/* 10-1 성별코드 */
ALTER TABLE Witness
    ADD CONSTRAINT FK_Sex_TO_Witness
    FOREIGN KEY ( sexCode ) REFERENCES Sex ( sexCode );

/* 10-2 축종코드 */
ALTER TABLE Witness
    ADD CONSTRAINT FK_AnimalType_TO_Witness 
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );

/* 10-3 품종코드 */
ALTER TABLE Witness
    ADD CONSTRAINT FK_Breed_TO_Witness
    FOREIGN KEY ( BreedCode ) REFERENCES Breed ( BreedCode );

/* 10-4 주소코드 */
ALTER TABLE Witness
    ADD CONSTRAINT FK_Address_TO_Witness 
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 11. 성별 : Sex
ALTER TABLE Sex
    ADD CONSTRAINT FK_Neuter_TO_Sex
    FOREIGN KEY ( neuterCode ) REFERENCES Neuter ( neuterCode );
--------------------------------------------------------------------------------
-- 12. 중성화 : Neuter
--------------------------------------------------------------------------------
-- 13. 유기 동물 예약 : AbandonedAnimalReservation
/* 13-1 유기동물코드 */
ALTER TABLE AbandonedAnimalReservation
    ADD CONSTRAINT FK_AbandonedAnimal_TO_AbandonedAnimalReservation
    FOREIGN KEY ( abAnimalCode ) REFERENCES AbandonedAnimal ( abAnimalCode );

/* 13-2 보호소코드 */
ALTER TABLE AbandonedAnimalReservation
    ADD CONSTRAINT FK_Shelter_TO_AbandonedAnimalReservation
    FOREIGN KEY ( shelterCode ) REFERENCES Shelter ( shelterCode );

/* 13-3 회원코드 */
ALTER TABLE AbandonedAnimalReservation
    ADD CONSTRAINT FK_MemberInfo_TO_AbandonedAnimalReservation
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );

--------------------------------------------------------------------------------
-- 14. 세미나 예약 : SeminarReservation
/* 14-2 회원코드 */
ALTER TABLE SeminarReservation
    ADD CONSTRAINT FK_MemberInfo_TO_SeminarReservation
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );

/* 14-1 세마나코드 */
ALTER TABLE SeminarReservation
    ADD CONSTRAINT FK_Seminar_TO_SeminarReservation
    FOREIGN KEY ( seminarCode ) REFERENCES Seminar ( seminarCode );
    
--------------------------------------------------------------------------------
-- 15. 게시판 : BoardType
--------------------------------------------------------------------------------
-- 16. 게시글 : Board
/* 16-1 회원코드 */   
ALTER TABLE Board
    ADD CONSTRAINT FK_MemberInfo_TO_Board
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
    
/* 16-2 게시판코드 */
ALTER TABLE Board
    ADD CONSTRAINT FK_BoardType_TO_Board
    FOREIGN KEY ( boardTypeCode ) REFERENCES BoardType ( boardTypeCode );
    
/* 16-3 댓글코드 */
ALTER TABLE Board
    ADD CONSTRAINT FK_Reply_TO_Board
    FOREIGN KEY ( replyGroupCode ) REFERENCES ReplyGroup ( replyGroupCode );   
--------------------------------------------------------------------------------
-- 17.댓글그룹 : ReplyGroup
/* 17-1 게시판코드 */
ALTER TABLE ReplyGroup
    ADD CONSTRAINT FK_Board_TO_ReplyGroup
    FOREIGN KEY ( boardCode ) REFERENCES Board ( boardCode );
/* 17-2 댓글코드 */
ALTER TABLE ReplyGroup
    ADD CONSTRAINT FK_Reply_TO_ReplyGroup
    FOREIGN KEY ( replyCode ) REFERENCES Reply ( replyCode );
--------------------------------------------------------------------------------
-- 18. 댓글 : Reply
--------------------------------------------------------------------------------
-- 19. 권한 : Authorize
--------------------------------------------------------------------------------
-- 20. 채팅메세지 : ChatMessage
/* 20-1 채팅룸코드 */
ALTER TABLE ChatMessage
    ADD CONSTRAINT FK_ChatRoom_TO_ChatMessage
    FOREIGN KEY ( ChatRoomCode ) REFERENCES ChatRoom ( ChatRoomCode );
--------------------------------------------------------------------------------
-- 21. 채팅룸 : ChatRoom
/* 21-1 채팅메시지코드 */
ALTER TABLE ChatRoom
    ADD CONSTRAINT FK_ChatRoom_TO_ChatRoom
    FOREIGN KEY ( ChatRoomCode ) REFERENCES ChatRoom ( ChatRoomCode );
    
/* 21-2 채팅룸인원코드 */
ALTER TABLE ChatRoom
    ADD CONSTRAINT FK_ChatMessage_TO_ChatRoom
    FOREIGN KEY ( chatMessageCode ) REFERENCES ChatMessage ( chatMessageCode );
--------------------------------------------------------------------------------
-- 22. 채팅룸인원 : ChatRoomMember
/* 22-1 멤버코드 */
ALTER TABLE ChatRoomMember
    ADD CONSTRAINT FK_MemberInfo_TO_ChatRoomMember
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );

/* 22-2 채팅룸코드 */
ALTER TABLE ChatRoomMember
    ADD CONSTRAINT FK_ChatRoom_TO_ChatRoomMember
    FOREIGN KEY ( ChatRoomCode ) REFERENCES ChatRoom ( ChatRoomCode );
--------------------------------------------------------------------------------
-- 23. 시군구 : Sigungu
/* 23-1 시도코드 */
ALTER TABLE Sigungu
    ADD CONSTRAINT FK_Sido_TO_Sigungu
    FOREIGN KEY ( sidoCode ) REFERENCES Sido ( sidoCode );
--------------------------------------------------------------------------------
-- 24. 반려동물 : Pet
/* 24-1 회원코드 */
ALTER TABLE Pet
    ADD CONSTRAINT FK_MemberInfo_TO_Pet 
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
    
/* 24-2 성별코드 */
ALTER TABLE Pet
    ADD CONSTRAINT FK_Sex_TO_Pet
    FOREIGN KEY ( sexCode ) REFERENCES Sex ( sexCode );

/* 24-3 품종코드 */
ALTER TABLE Pet
    ADD CONSTRAINT FK_Breed_TO_Pet
    FOREIGN KEY ( BreedCode ) REFERENCES Breed ( BreedCode );
--------------------------------------------------------------------------------
-- 25. 회원정보 삭제유보 : DelMemberInfoRet
/* 25-1 */
ALTER TABLE DelMemInfoRet
    ADD CONSTRAINT FK_MemberInfo_TO_DelMemInfoRet
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
--------------------------------------------------------------------------------
-- 26. 강사 : Lecturer
/* 26-1 회원코드 */
ALTER TABLE Lecturer
    ADD CONSTRAINT FK_MemberInfo_TO_Lecturer
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
--------------------------------------------------------------------------------
-- 27. 양육 : ParentingService
/* 27-1 회원코드 */
ALTER TABLE ParentingService
    ADD CONSTRAINT FK_MemberInfo_TO_ParentingService
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
    
/* 27-1 갤러리코드 */
ALTER TABLE ParentingService
    ADD CONSTRAINT FK_Gallery_TO_ParentingService
    FOREIGN KEY ( GalleryCode ) REFERENCES Gallery ( GalleryCode );
    
/* 27-1 유기동물코드 */
ALTER TABLE ParentingService
    ADD CONSTRAINT FK_AbandonedAnimal_TO_ParentingService
    FOREIGN KEY ( abAnimalCode ) REFERENCES AbandonedAnimal ( abAnimalCode );
--------------------------------------------------------------------------------
-- 28. 갤러리 : Gallery
/* 28-1 양육서비스코드 */
ALTER TABLE Gallery
    ADD CONSTRAINT FK_ParentingService_TO_Gallery
    FOREIGN KEY ( ParentingServiceCode ) REFERENCES ParentingService ( ParentingServiceCode );
--------------------------------------------------------------------------------
-- 29. 도로명주소 : RoadAddress
--------------------------------------------------------------------------------
-- 30. 주소 : Address
/* 30-1 도로명주소코드 */
ALTER TABLE Address
    ADD CONSTRAINT FK_Sigungu_TO_Address
    FOREIGN KEY ( sigunguCode ) REFERENCES Sigungu ( sigunguCode );

/* 30-2 시군구코드 */
ALTER TABLE Address
    ADD CONSTRAINT FK_RoadAddress_TO_Address
    FOREIGN KEY ( roadNameCode ) REFERENCES RoadAddress ( roadNameCode );
--------------------------------------------------------------------------------