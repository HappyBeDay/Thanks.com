/* �� ���⵿�� : AbandonedAnimal */
CREATE TABLE AbandonedAnimal (
    abAnimalCode NUMBER(20) NOT NULL, /* �����ȣ �ڵ� */
    abThumbPic UriType NOT NULL, /* ����� ���� */
    findDate DATE NOT NULL, /* �߰� ��¥ */
    findLoc NVARCHAR2(100) NOT NULL, /* �߰� ��� */
    BreedCode NUMBER(7) NOT NULL, /* ǰ���ڵ� */
    abType NVARCHAR2(10) NOT NULL, /* �����ڵ� */
    abColor NVARCHAR2(10) NOT NULL, /* ���� */
    abAge NUMBER(7,2) NOT NULL, /* ���� */
    abWeight NUMBER(7,2) NOT NULL, /* ü�� */
    noticeNum NVARCHAR2(30) NOT NULL, /* ���� ��ȣ */
    noticeStartDate DATE NOT NULL, /* ���� ������ */
    noticeEndDate DATE NOT NULL, /* ���� ������ */
    abPic UriType NOT NULL, /* ���� */
    abState NVARCHAR2(7) NOT NULL, /* ���� */
    abFeat NVARCHAR2(100), /* Ư¡ */
    abComment NVARCHAR2(100), /* Ư�̻��� */
    abAttention NUMBER, /* ���ɵ��� */
    abSex NUMBER(1) DEFAULT 0 NOT NULL, /* ���� �ڵ� */
    shelterCode NUMBER(7) NOT NULL, /* ��ȣ�� �ڵ� */
    roadNameCode NUMBER(7) /* ���θ� �ּ� �ڵ� */
);
/* No need for sequence */
/* comment on is '�ּ�' */
COMMENT ON TABLE AbandonedAnimal IS '���⵿�� : AbandonedAnimal';
COMMENT ON COLUMN AbandonedAnimal.abAnimalCode IS '�����ȣ �ڵ�';
COMMENT ON COLUMN AbandonedAnimal.abThumbPic IS '����� ����';
COMMENT ON COLUMN AbandonedAnimal.findDate IS '������';
COMMENT ON COLUMN AbandonedAnimal.findLoc IS '�߰� ���';
COMMENT ON COLUMN AbandonedAnimal.BreedCode IS 'ǰ���ڵ�';
COMMENT ON COLUMN AbandonedAnimal.abType IS '�����ڵ�';
COMMENT ON COLUMN AbandonedAnimal.abColor IS '����';
COMMENT ON COLUMN AbandonedAnimal.abAge IS '����';
COMMENT ON COLUMN AbandonedAnimal.abWeight IS '������';
COMMENT ON COLUMN AbandonedAnimal.noticeNum IS 'unique';
COMMENT ON COLUMN AbandonedAnimal.noticeStartDate IS '���� ������';
COMMENT ON COLUMN AbandonedAnimal.noticeEndDate IS '���� ������';
COMMENT ON COLUMN AbandonedAnimal.abPic IS '����';
COMMENT ON COLUMN AbandonedAnimal.abState IS '��ȣ��, ����(�ȶ���, �ڿ���, ��ȯ)';
COMMENT ON COLUMN AbandonedAnimal.abFeat IS 'Ư¡';
COMMENT ON COLUMN AbandonedAnimal.abComment IS '�ִ� ��� ���� ��찡 ����';
COMMENT ON COLUMN AbandonedAnimal.abAttention IS '���� ���� ��Ʈ ��� Ŭ��';
COMMENT ON COLUMN AbandonedAnimal.abSex IS '���� �ڵ�';
COMMENT ON COLUMN AbandonedAnimal.shelterCode IS '��ȣ�� ��ȣ';
COMMENT ON COLUMN AbandonedAnimal.roadNameCode IS '���θ� �ּ� �ڵ�';
/* index of AbandonedAnimal.abAnimalCode : ASC */
CREATE UNIQUE INDEX PK_AbandonedAnimal ON AbandonedAnimal ( abAnimalCode ASC );
/* contraint : pk_AbandonedAnimal */
ALTER TABLE AbandonedAnimal ADD CONSTRAINT PK_AbandonedAnimal PRIMARY KEY ( abAnimalCode );
--------------------------------------------------------------------------------
/* �� ȸ�� */
CREATE TABLE MemberInfo (
    memberCode NUMBER(7) NOT NULL, /* ȸ���ڵ� */
    id NVARCHAR2(20) NOT NULL, /* ���̵� */
    pw NVARCHAR2(50) NOT NULL, /* ��й�ȣ */
    name NVARCHAR2(10), /* ȸ���̸� */
    tel NUMBER(12) NOT NULL, /* ��ȭ��ȣ */
    email NVARCHAR2(50) NOT NULL, /* �̸��� */
    authorizeCode NUMBER(1) DEFAULT 0 NOT NULL,
    birth DATE, /* ������� */
    petCode NUMBER(7), /* �ݷ����� �ڵ� */
    roadNameCode NUMBER(7) /* ���θ� �ּ� �ڵ� */
);
/* sequence for 'memberCode' is MemberInfo pk :  */
create sequence MemberInfo_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE MemberInfo IS 'ȸ�� ����';
COMMENT ON COLUMN MemberInfo.memberCode IS 'ȸ�� �ڵ�';
COMMENT ON COLUMN MemberInfo.id IS 'ȸ�� ���̵�';
COMMENT ON COLUMN MemberInfo.pw IS 'ȸ�� ��й�ȣ';
COMMENT ON COLUMN MemberInfo.name IS 'ȸ�� �̸�';
COMMENT ON COLUMN MemberInfo.tel IS 'ȸ�� ��ȭ��ȣ';
COMMENT ON COLUMN MemberInfo.email IS 'ȸ�� �̸���';
COMMENT ON COLUMN MemberInfo.birth IS 'ȸ�� �������';
COMMENT ON COLUMN MemberInfo.petCode IS '�ݷ����� �ڵ�';
COMMENT ON COLUMN MemberInfo.roadNameCode IS '���θ� �ּ� �ڵ�';
/* index of MemberInfo.memberCode : ASC */
CREATE UNIQUE INDEX PK_MemberInfo ON MemberInfo ( memberCode ASC );
/* contraint : PK_MemberInfo */
ALTER TABLE MemberInfo ADD CONSTRAINT PK_MemberInfo PRIMARY KEY (memberCode);
--------------------------------------------------------------------------------
/* �� ���̳� */
CREATE TABLE Seminar (
    seminarCode NUMBER(7) NOT NULL, /* ���̳� �ڵ� */
    lectName NVARCHAR2(20) NOT NULL, /* ���� �̸� */
    lectLoc NVARCHAR2(10), /* ��� */
    lectSeatCnt NUMBER NOT NULL, /* �¼����� */
    lecturerCode NUMBER(7), /* �����ڵ� */
    lectDate DATE NOT NULL, /* ���� ��¥ */
    lectStartTime TIMESTAMP, /* ���� ���� �ð� */
    lectEndTime TIMESTAMP, /* ���� ���� �ð� */
    lectPic UriType, /* ���� */
    lectContent NVARCHAR2(100) /* ���� */
);
/* sequence for 'seminarCode' is Seminar pk :  */
create sequence Seminar_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE Seminar IS '���̳�';
COMMENT ON COLUMN Seminar.seminarCode IS '���̳� �ڵ�';
COMMENT ON COLUMN Seminar.lectName IS '���� �̸�';
COMMENT ON COLUMN Seminar.lectLoc IS '���';
COMMENT ON COLUMN Seminar.lectSeatCnt IS '�¼�����';
COMMENT ON COLUMN Seminar.lecturerCode IS '�����ڵ�';
COMMENT ON COLUMN Seminar.lectDate IS '���� ��¥';
COMMENT ON COLUMN Seminar.lectStartTime IS '���� ���� �ð�';
COMMENT ON COLUMN Seminar.lectEndTime IS '���� ���� �ð�';
COMMENT ON COLUMN Seminar.lectPic IS '����';
COMMENT ON COLUMN Seminar.lectContent IS '����';
/* index of Seminar.seminarCode : ASC */
CREATE UNIQUE INDEX PK_Seminar ON Seminar ( seminarCode ASC );
/* contraint : pk_Seminar */
ALTER TABLE Seminar ADD CONSTRAINT PK_Seminar PRIMARY KEY ( seminarCode );
--------------------------------------------------------------------------------
/* �� ��� */ 
CREATE TABLE Stats (
    dayDate TIMESTAMP NOT NULL, /* �Ϻ� ��¥ */
    joinShelterCnt NUMBER(5) NOT NULL, /* �Լ� ��ü�� */
    returnHomeCnt NUMBER(5) NOT NULL, /* �Ͱ� ��ü�� */
    adoptedCnt NUMBER(5) NOT NULL, /* �Ծ�� ��ü�� */
    euthDeathCnt NUMBER(5) NOT NULL, /* �ȶ��� ��ü�� */
    naturalDeathCnt NUMBER(5) NOT NULL /* �ڿ��� ��ü�� */
);
/* No need for Sequence */
/* �ּ� */
COMMENT ON TABLE Stats IS '���';
COMMENT ON COLUMN Stats.dayDate IS '�Ϻ� ��¥';
COMMENT ON COLUMN Stats.joinShelterCnt IS '�Լ� ��ü��';
COMMENT ON COLUMN Stats.returnHomeCnt IS '�Ͱ� ��ü��';
COMMENT ON COLUMN Stats.adoptedCnt IS '�Ծ�� ��ü��';
COMMENT ON COLUMN Stats.euthDeathCnt IS '�ȶ��� ��ü��';
COMMENT ON COLUMN Stats.naturalDeathCnt IS '�ڿ��� ��ü��';
/* index of Stats.dayDate : ASC */
CREATE UNIQUE INDEX PK_Status ON Stats ( dayDate ASC );
/* contraint : PK_Statistics */
ALTER TABLE Stats ADD CONSTRAINT PK_Stats PRIMARY KEY ( dayDate );
--------------------------------------------------------------------------------
/* �� �õ� */
CREATE TABLE Sido (
   sidoCode NUMBER(7) NOT NULL, /* �õ� �ڵ� */
   sidoCodeName NVARCHAR2(50) NOT NULL /* �ڵ� �� */
);
/* No need for Sequence : ���������� ���� ������� �ۼ� */
/* �ּ� */
COMMENT ON TABLE Sido IS '�õ�';
COMMENT ON COLUMN Sido.sidoCode IS '���������� ��� 17�� �õ�����';
COMMENT ON COLUMN Sido.sidoCodeName IS '�õ� �̸�';
/* index of Sido.sidoCode : ASC */
CREATE UNIQUE INDEX PK_Sido ON Sido ( sidoCode ASC );
/* contraint PK_Sido of Sido */
ALTER TABLE Sido ADD CONSTRAINT PK_Sido PRIMARY KEY ( sidoCode );
--------------------------------------------------------------------------------
/* �� ��ȣ�� */
CREATE TABLE Shelter (
    shelterCode NUMBER(7) NOT NULL, /* ��ȣ�� �ڵ�, ���������� ���п� ����. */
    shelterName NVARCHAR2(50) NOT NULL, /* ������ȣ���͸� */
    MgmtAgencyName NVARCHAR2(20) NOT NULL, /* ��������� */
    shelterType NVARCHAR2(10) NOT NULL, /* ������ȣ�������� */
    shelterDesigDate DATE NOT NULL, /* ������ȣ������������ */
    weekdayStartTime TIMESTAMP NOT NULL, /* ���Ͽ���۽ð� */
    weekdayEndTime TIMESTAMP NOT NULL, /* ���Ͽ����ð� */
    weekdayAdoptStartTime TIMESTAMP, /* ���Ϻо���۽ð� */
    weekdayAdoptEndTime TIMESTAMP, /* ���Ϻо�����ð� */
    weekendStartTime TIMESTAMP, /* �ָ�����۽ð� */
    weekendEndTime TIMESTAMP, /* �ָ������ð� */
    weekendAdoptStartTime TIMESTAMP, /* �ָ��о���۽ð� */
    weekendAdoptEndTime TIMESTAMP, /* �ָ��о�����ð� */
    holiday NVARCHAR2(20) NOT NULL, /* �޹��� */
    vetCnt NUMBER(5) NOT NULL, /* ���ǻ��ο��� */
    specMgrCnt NUMBER(5) NOT NULL, /* ���������ο��� */
    drOfficeCnt NUMBER(5), /* ����Ǽ� */
    careRmCnt NUMBER(5), /* �����Ǽ� */
    quarantineRmCnt NUMBER(5), /* �ݸ��Ǽ� */
    foodStrgRmCnt NUMBER(5), /* ��Ẹ���Ǽ� */
    vehicleCnt NUMBER(5), /* ������ݿ������������ */
    tel NUMBER(15) NOT NULL, /* ��ȭ��ȣ */
    dataDate DATE NOT NULL, /* �����ͱ������� */
    roadNameCode NUMBER(7) /* ���θ� �ּ� �ڵ� */
);
/* sequence for 'Seminar' is Seminar pk :  */
create sequence Seminar_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */    
COMMENT ON TABLE Shelter IS '��ȣ��';
COMMENT ON COLUMN Shelter.shelterCode IS '��ȣ�� �ڵ� - 211020(306)';
COMMENT ON COLUMN Shelter.shelterName IS '��ȣ�� ��';
COMMENT ON COLUMN Shelter.MgmtAgencyName IS '���������';
COMMENT ON COLUMN Shelter.shelterType IS '������ȣ��������';
COMMENT ON COLUMN Shelter.shelterDesigDate IS '������ȣ������������';
COMMENT ON COLUMN Shelter.weekdayStartTime IS 'HH:MM ���Ͽ���۽ð�';
COMMENT ON COLUMN Shelter.weekdayEndTime IS 'HH:MM ���Ͽ����ð� ';
COMMENT ON COLUMN Shelter.weekdayAdoptStartTime IS 'HH:MM ���Ϻо���۽ð� ';
COMMENT ON COLUMN Shelter.weekdayAdoptEndTime IS 'HH:MM ���Ϻо�����ð� ';
COMMENT ON COLUMN Shelter.weekendStartTime IS 'HH:MM �ָ�����۽ð� ';
COMMENT ON COLUMN Shelter.weekendEndTime IS 'HH:MM �ָ������ð� ';
COMMENT ON COLUMN Shelter.weekendAdoptStartTime IS 'HH:MM �ָ��о���۽ð� ';
COMMENT ON COLUMN Shelter.weekendAdoptEndTime IS 'HH:MM �ָ��о�����ð� ';
COMMENT ON COLUMN Shelter.holiday IS '�޹���';
COMMENT ON COLUMN Shelter.vetCnt IS '���ǻ��ο���';
COMMENT ON COLUMN Shelter.specMgrCnt IS '���������ο���';
COMMENT ON COLUMN Shelter.drOfficeCnt IS '����Ǽ�';
COMMENT ON COLUMN Shelter.careRmCnt IS '�����Ǽ�';
COMMENT ON COLUMN Shelter.quarantineRmCnt IS '�ݸ��Ǽ�';
COMMENT ON COLUMN Shelter.foodStrgRmCnt IS '��Ẹ���Ǽ�';
COMMENT ON COLUMN Shelter.vehicleCnt IS '������ݿ������������';
COMMENT ON COLUMN Shelter.tel IS '��ȣ�� ��ȭ��ȣ';
COMMENT ON COLUMN Shelter.dataDate IS '�����ͱ�������';
COMMENT ON COLUMN Shelter.roadNameCode IS '���θ� �ּ� �ڵ�';
/* index of Shelter.shelterCode : ASC */
CREATE UNIQUE INDEX PK_Shelter ON Shelter ( shelterCode ASC );
/* constraint : PK_Shelter of Shelter */
ALTER TABLE Shelter ADD CONSTRAINT PK_Shelter PRIMARY KEY ( shelterCode );
--------------------------------------------------------------------------------
/* �� �����׷� */
create table AnimalGroup (
    animalGroupCode NUMBER(7) not null, /* �ܷ�Ű to Shelter.shelterCode */
    shelterCode NUMBER(7) not null,
    animalTypeCode NUMBER(7) not null
)
/* sequence for animalGroupCode is animalGroup pk : */
create sequence Seminar_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON COLUMN AnimalGroup.animalGroupCode IS '���� �׷� �ڵ�';
COMMENT ON COLUMN AnimalGroup.shelterCode IS '��ȣ�� �ڵ� �ܷ�Ű';
COMMENT ON COLUMN AnimalGroup.animalTypeCode IS '���� �ڵ� �ܷ�Ű';
/* index of animalGroup.animalGroupCode : ASC */
CREATE UNIQUE INDEX PK_AnimalGroup ON AnimalGroup ( animalGroupCode ASC );
/* contraint : PK_Sido */
ALTER TABLE AnimalGroup ADD CONSTRAINT PK_AnimalGroup PRIMARY KEY ( PK_AnimalGroup );
--------------------------------------------------------------------------------
/* �� ���� */
CREATE TABLE AnimalType (
   animalTypeCode NVARCHAR2(7) NOT NULL, /* �����ڵ� */
   animalTypeName NVARCHAR2(20) NOT NULL /* ������ */
);
/* No need for sequence */
/* �ּ� */
COMMENT ON TABLE AnimalType IS '����';
COMMENT ON COLUMN AnimalType.animalTypeCode IS '���� �ڵ�, ���������� ��� 211018(3)';
COMMENT ON COLUMN AnimalType.animalTypeName IS '���� ��, like ��, ������...';
/* index of AnimalType.animalTypeCode : ASC */
CREATE UNIQUE INDEX PK_AnimalType ON AnimalType ( animalTypeCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE AnimalType ADD CONSTRAINT PK_AnimalType PRIMARY KEY ( animalTypeCode );
--------------------------------------------------------------------------------
/* �� ǰ�� */
CREATE TABLE BreedCode (
   BreedCode NUMBER(7) NOT NULL, /* ǰ���ڵ� */
   breedName NVARCHAR2(20) NOT NULL, /* ǰ���� */
   animalTypeCode NVARCHAR2(10) NOT NULL /* �����ڵ� */
);
/* No need for sequence */
COMMENT ON TABLE BreedCode IS 'ǰ���ڵ�';
COMMENT ON COLUMN BreedCode.BreedCode IS 'ǰ���ڵ�';
COMMENT ON COLUMN BreedCode.breedName IS 'ǰ����';
COMMENT ON COLUMN BreedCode.animalTypeCode IS '���� �ܷ�Ű';
/* index of BreedCode.BreedCode : ASC */
CREATE UNIQUE INDEX PK_BreedCode ON BreedCode ( BreedCode ASC );
/* contraint : PK_BreedCode */
ALTER TABLE BreedCode ADD CONSTRAINT PK_BreedCode PRIMARY KEY ( BreedCode );
--------------------------------------------------------------------------------
/* �� ��� & ���� */
CREATE TABLE Witness (
    witnessCode NUMBER(7) NOT NULL, /* ��� & ���� �ڵ� */
    sexCode NUMBER(1) DEFAULT 0 NOT NULL, /* ���� �ڵ� */
    animalTypeCode NVARCHAR2(10), /* �����ڵ� */
    BreedCode NUMBER(7), /* ǰ���ڵ� */
    witMisPic UriType, /* ���� */
    witMisColor NVARCHAR2(10), /* ���� */
    witMisAge NVARCHAR2(10), /* ���� */
    witMisState NVARCHAR2(10) NOT NULL, /* ���� */
    witMisDate DATE, /* �߰�/���� ��¥ */
    witMisLoc NVARCHAR2(100), /* �߰�/���� ��� */
    witMisFeat NVARCHAR2(100), /* Ư¡ */
    witMisComment NVARCHAR2(100), /* Ư¡���� */
    roadNameCode NUMBER(7) /* ���θ� �ּ� �ڵ� */
);  
/* sequence for {columnName} is {tableName} pk : */
create sequence Witness_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE Witness IS '��� & ����';
COMMENT ON COLUMN Witness.witnessCode IS '��� & ���� �ڵ�';
COMMENT ON COLUMN Witness.sexCode IS '���� �ڵ� 0, 1, 2';
COMMENT ON COLUMN Witness.animalTypeCode IS '�����ڵ�';
COMMENT ON COLUMN Witness.BreedCode IS 'ǰ���ڵ�';
COMMENT ON COLUMN Witness.witMisPic IS '����';
COMMENT ON COLUMN Witness.witMisColor IS '����';
COMMENT ON COLUMN Witness.witMisAge IS '����';
COMMENT ON COLUMN Witness.witMisState IS '���� : ex) ��ȣ, ���, ���, ����';
COMMENT ON COLUMN Witness.witMisDate IS '�߰�/���� ��¥';
COMMENT ON COLUMN Witness.witMisLoc IS '�߰�/���� ���';
COMMENT ON COLUMN Witness.witMisFeat IS 'Ư¡';
COMMENT ON COLUMN Witness.witMisComment IS 'Ư¡����';
COMMENT ON COLUMN Witness.roadNameCode IS '���θ� �ּ� �ڵ�';
/* index of Witness.witnessCode : ASC */
CREATE UNIQUE INDEX PK_Witness ON Witness ( witnessCode ASC );
/* contraint : PK_Witness */
ALTER TABLE Witness ADD CONSTRAINT PK_Witness PRIMARY KEY ( witnessCode );
--------------------------------------------------------------------------------
/* �� ���� */
CREATE TABLE Sex (
    sexCode NUMBER(1) DEFAULT 0 NOT NULL, /* ���� �ڵ� */
    sexName NVARCHAR2(10) DEFAULT 0 NOT NULL, /* ������ */
    neuterCode NUMBER(1) DEFAULT 0 /* �߼�ȭ �ڵ� */
);
/* No need for sequence */
COMMENT ON TABLE Sex IS '����';
COMMENT ON COLUMN Sex.sexCode IS '���� �ڵ� : 1, 2, 3, 4';
COMMENT ON COLUMN Sex.sexName IS '���� ��';
COMMENT ON COLUMN Sex.neuterCode IS '�߼�ȭ �ڵ�';
/* index of Sex.sexCode : ASC */
CREATE UNIQUE INDEX PK_Sex ON Sex ( sexCode ASC );
/* contraint : PK_Sex */
ALTER TABLE Sex ADD CONSTRAINT PK_Sex PRIMARY KEY ( sexCode );
--------------------------------------------------------------------------------
/* �� �߼�ȭ */
CREATE TABLE Neuter (
    neuterCode NUMBER(1) DEFAULT 0 NOT NULL, /* �߼�ȭ �ڵ� */
    neuterName NVARCHAR2(20) DEFAULT 'False' NOT NULL /* �ڵ� �� */
);
/* No need for sequence */
COMMENT ON TABLE Neuter IS '�߼�ȭ';
COMMENT ON COLUMN Neuter.neuterCode IS '�߼�ȭ �ڵ�, �߼�ȭ ���� ����, 0:false, 1:true';
COMMENT ON COLUMN Neuter.neuterName IS '�߼�ȭ ����';
/* index of Neuter.neuterCode : ASC */
CREATE UNIQUE INDEX PK_Neuter ON Neuter ( neuterCode ASC );
/* contraint : PK_Neuter */
ALTER TABLE Neuter ADD CONSTRAINT PK_Neuter PRIMARY KEY ( neuterCode );
--------------------------------------------------------------------------------
/* �� ���⵿�� ���� */
CREATE TABLE AbandonedAnimalReservation (
   animalReservationCode NUMBER(7) NOT NULL, /* ���� �ڵ� */
   abAnimalCode NUMBER(20) NOT NULL, /* �����ȣ �ڵ� */
   shelterCode NUMBER(7) NOT NULL, /* ��ȣ�� �ڵ� */
   memberCode NUMBER(7) NOT NULL, /* ȸ���ڵ� */
   animalReservationDate TIMESTAMP /* ���� ��û */
);
/* sequence for animalReservationCode is AbandonedAnimalReservation pk : */
create sequence AbandonedAnimalReservation_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE AbandonedAnimalReservation IS '���⵿�� ����';
COMMENT ON COLUMN AbandonedAnimalReservation.animalReservationCode IS '���� �ڵ�';
COMMENT ON COLUMN AbandonedAnimalReservation.abAnimalCode IS '�����ȣ �ڵ�';
COMMENT ON COLUMN AbandonedAnimalReservation.shelterCode IS '��ȣ�� �ڵ�';
COMMENT ON COLUMN AbandonedAnimalReservation.memberCode IS 'ȸ���ڵ�';
COMMENT ON COLUMN AbandonedAnimalReservation.animalReservationDate IS '���� ��û';
/* index of AbandonedAnimalReservation.animalReservationCode : ASC */
CREATE UNIQUE INDEX PK_AbandonedAnimalReservation 
    ON AbandonedAnimalReservation ( animalReservationCode ASC );
/* contraint : PK_AbandonedAnimalReservation */
ALTER TABLE AbandonedAnimalReservation ADD 
    CONSTRAINT PK_AbandonedAnimalReservation PRIMARY KEY ( animalReservationCode );
--------------------------------------------------------------------------------
/* �� ���̳� ���� */
CREATE TABLE SeminarReservation (
   seminarReservationCode NUMBER(7) NOT NULL, /* ���� �ڵ� */
   seminarCode NUMBER(7) NOT NULL, /* ���̳� �ڵ� */
   memberCode NUMBER(7) NOT NULL /* ȸ���ڵ� */
);
/* sequence for {columnName} is {tableName} pk : */
create sequence SeminarReservation_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE SeminarReservation IS '���̳� ����';
COMMENT ON COLUMN SeminarReservation.seminarReservationCode IS '���� �ڵ�';
COMMENT ON COLUMN SeminarReservation.seminarCode IS '���̳� �ڵ�';
COMMENT ON COLUMN SeminarReservation.memberCode IS 'ȸ���ڵ�';
/* index of SeminarReservation.seminarReservationCode : ASC */
CREATE UNIQUE INDEX PK_SeminarReservation
   ON SeminarReservation ( seminarReservationCode ASC );
/* contraint : PK_SeminarReservation */
ALTER TABLE SeminarReservation ADD
    CONSTRAINT PK_SeminarReservation PRIMARY KEY ( seminarReservationCode );
--------------------------------------------------------------------------------
/* �� �Խ��� (�Խñ� ����) */
create table BoardType (
    boardTypeCode NUMBER(7) NOT NULL,
    boardTypeName NVARCHAR2(20) NOT NULL
)
/* sequence for boardTypeCode is BoardType pk : */
create sequence BoardType_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
comment on table BoardType is '�Խ���, �Խñ� ����';
comment on column BoardType.boardTypeCode is '�Խ��� �ڵ�';
comment on column BoardType.boardTypeCode is '�Խ��� �̸�';
/* index of BoardType.boardTypeCode : ASC */
CREATE UNIQUE INDEX PK_BoardType ON BoardType ( boardTypeCode ASC );
/* contraint : PK_BoardType */
ALTER TABLE BoardType ADD CONSTRAINT PK_BoardType PRIMARY KEY ( boardTypeCode );
--------------------------------------------------------------------------------
/* 16. �Խ��� */
CREATE TABLE Board (
    boardCode NUMBER(7) NOT NULL, /* �Խ��� �ڵ� */
    memberCode NUMBER(7) NOT NULL, /* ȸ���ڵ� - �ۼ��� */
    boardTitle NVARCHAR2(20) NOT NULL, /* ���� */
    boardContent NVARCHAR2(100) NOT NULL, /* ���� */
    boardPic UriType, /* ���� */
    boardDate DATE NOT NULL, /* �ۼ���¥ */
    boardHit NUMBER(7) DEFAULT 0 NOT NULL, /* ��ȸ�� */
    boardLike NUMBER(7) DEFAULT 0 NOT NULL, /* ���ƿ� �� */
    boardTypeCode NUMBER(7) NOT NULL, /* �Խ��� �ڵ� */
    boardNum NUMBER(7) NOT NULL, /* �� ��ȣ */
    replyGroupCode NUMBER(7) /* ��� �ڵ� */
);
/* sequence for boardCode is Board pk : */
create sequence Board_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE Board IS '�Խ���';
COMMENT ON COLUMN Board.boardCode IS '�Խ��� �ڵ�';
COMMENT ON COLUMN Board.memberCode IS 'ȸ���ڵ� - �ۼ���';
COMMENT ON COLUMN Board.boardTitle IS '����';
COMMENT ON COLUMN Board.boardContent IS '����';
COMMENT ON COLUMN Board.boardPic IS '����';
COMMENT ON COLUMN Board.boardDate IS '�ۼ���¥';
COMMENT ON COLUMN Board.boardHit IS '��ȸ��';
COMMENT ON COLUMN Board.boardLike IS '���ƿ� ��';
COMMENT ON COLUMN Board.boardTypeCode IS '�Խ��� �ڵ�';
COMMENT ON COLUMN Board.boardNum IS '�� ��ȣ';
/* index of Board.boardCode : ASC */
CREATE UNIQUE INDEX PK_Board ON Board ( boardCode ASC );
/* contraint : PK_Board */
ALTER TABLE Board ADD CONSTRAINT PK_Board PRIMARY KEY ( boardCode );
--------------------------------------------------------------------------------
/* 17. ��� �׷� */
create table ReplyGroup (
    replyGroupCode NUMBER(7) not null,
    boardCode NUMBER(7) not null,
    replyCode NUMBER(7) not null
)
/* sequence for replyGroupCode is replyGroup pk : */
create sequence ReplyGroup
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
comment on table ReplyGroup is '��۱׷�, ��۷�Ʈ ����';
comment on column ReplyGroup.replyGroupCode is '��۱׷� �ڵ�';
comment on column ReplyGroup.boardCode is '��۱׷�(��۵�)�� �޸� �Խñ� �ڵ�, �ܷ�Ű';
comment on column ReplyGroup.replyCode is '��۱׷�(��۵�)�� ��Ʈ ��� �ڵ�, �ܷ�Ű';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_ReplyGroup ON ReplyGroup ( replyGroupCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE ReplyGroup ADD CONSTRAINT PK_ReplyGroup PRIMARY KEY ( replyGroupCode );
--------------------------------------------------------------------------------
/* 18. ��� */
CREATE TABLE Reply (
    replyCode NUMBER(7) NOT NULL, /* ��� �ڵ� */
    replyWriter NVARCHAR2(10), /* �ۼ��� */
    replyContent NVARCHAR2(100), /* ���� */
    replyPic UriType, /* ���� */
    replyDateTime TIMESTAMP, /* �ۼ���¥,�ð� */
    replyLike NUMBER(7), /* ��� ���ƿ� �� */
    replyCodeRoot NUMBER(7), /* ��Ʈ ��� Code */
    replyPrintStep Number(7), /* ��� ��� ���� */
    replyCodeParentsCount NUMBER(7), /* �θ� ��� �� */
    replyCodeParentsNumber NUMBER(7), /* �θ� ��� Code */
    replyCodeChildCount NUMBER(7) /* �ڽ� ��� �� */
);
/* sequence for replyCode is Reply pk : */
create sequence Reply_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE Reply IS '���';
COMMENT ON COLUMN Reply.replyCode IS '��� �ڵ�';
COMMENT ON COLUMN Reply.replyWriter IS '�ۼ���';
COMMENT ON COLUMN Reply.replyContent IS '����';
COMMENT ON COLUMN Reply.replyPic IS '����';
COMMENT ON COLUMN Reply.replyDateTime IS '�ۼ���¥,�ð�';
COMMENT ON COLUMN Reply.replyLike IS '��� ���ƿ� ��';
COMMENT ON COLUMN Reply.replyCodeRoot IS '��Ʈ ��� Code';
COMMENT ON COLUMN Reply.replyPrintStep IS '��� ��� ����';
COMMENT ON COLUMN Reply.replyCodeParentsCount IS '�θ� ��� ��';
COMMENT ON COLUMN Reply.replyCodeParentsNumber IS '�θ� ��� Code';
COMMENT ON COLUMN Reply.replyCodeChildCount IS '�ڽ� ��� ��';
/* index of Reply.replyCode : ASC */
CREATE UNIQUE INDEX PK_Reply ON Reply ( replyCode ASC );
/* contraint : PK_Reply */
ALTER TABLE Reply ADD CONSTRAINT PK_Reply PRIMARY KEY ( replyCode );
--------------------------------------------------------------------------------
/* 19. ���� */
create table Authorize (
    authorizeCode NUMBER(1) default 1 not null,
    authorizeName NVARCHAR2(10) not null
)
/* No need for sequence */
comment on table Authorize is '���� ���� ���̺�';
comment on column Authorize.authorizeCode is '���� �ڵ�, Ŭ���� ���ϴ�, guest = 0';
comment on column Authorize.authorizeName is '���� �̸�';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_Authorize ON Authorize ( authorizeCode ASC );
/* contraint : PK_Authorize */
ALTER TABLE Authorize ADD CONSTRAINT PK_Authorize PRIMARY KEY ( authorizeCode );
--------------------------------------------------------------------------------
/* 20. ä�ø޼��� */
CREATE TABLE ChatMessage (
    chatMessageCode NUMBER(7) NOT NULL, /* ä�ø޽��� �ڵ� */
    ChatRoomCode NUMBER(7) NOT NULL, /* ä�÷� �ڵ� */
    content LONG /* ���� */
);
/* sequence for chatMessageCode is ChatMessage pk : */
create sequence ChatMessage_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE ChatMessage IS 'ä�ø޼���';
COMMENT ON COLUMN ChatMessage.chatMessageCode IS 'ä�ø޽��� �ڵ�';
COMMENT ON COLUMN ChatMessage.ChatRoomCode IS 'ä�÷� �ڵ�';
COMMENT ON COLUMN ChatMessage.content IS 
    'timestamp + member.name + message ���๮�ڷ� �������� ä�ó����� ���ڿ��� ����';
/* index of {tableName.columnName} : ASC */
CREATE UNIQUE INDEX PK_ChatMessage ON ChatMessage ( chatMessageCode ASC );
/* contraint : pk_{tableName} */
ALTER TABLE ChatMessage ADD CONSTRAINT PK_ChatMessage PRIMARY KEY ( chatMessageCode );
--------------------------------------------------------------------------------
/* 21. ä�÷� */
CREATE TABLE ChatRoom (
    ChatRoomCode NUMBER(7) NOT NULL, /* ä�÷� �ڵ� */
    chatRoomName NVARCHAR2(20) not null, /* ä�÷� �̸� */
    chatRoomMemberCode NUMBER(7) not null, /* ä�÷� �ο� �ڵ� */
    ChatRoomTotalCnt NUMBER(3) not null /* ä�÷� �� �ο� */
);
/* sequence for ChatRoomCode is ChatRoom pk : */
create sequence ChatRoom_seq
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE ChatRoom IS 'ä�÷�';
COMMENT ON COLUMN ChatRoom.ChatRoomCode IS 'ä�÷� �ڵ�';
COMMENT ON COLUMN ChatRoom.chatRoomName IS 'ä�÷� �̸�, 1��1 ä�ý� ���̵� ǥ��';
COMMENT ON COLUMN ChatRoom.chatRoomMemberCode IS 'ä�÷� �ο� �ڵ�';
COMMENT ON COLUMN ChatRoom.chatRoomMemberCode IS 'ä�÷� �� �ο�, max 99';
/* index of ChatRoom.ChatRoomCode : ASC */
CREATE UNIQUE INDEX PK_ChatRoom ON ChatRoom ( ChatRoomCode ASC );
/* contraint : PK_ChatRoom */
ALTER TABLE ChatRoom ADD CONSTRAINT PK_ChatRoom PRIMARY KEY ( ChatRoomCode );
-------------------------------------------------------------------------------- 
/* 22. ä�÷��ο� */
CREATE TABLE ChatRoomMember (
    chatRoomMemberCode NUMBER(7) NOT NULL, /* �ο� �ڵ� */
    ChatRoomCode NUMBER(7), /* ä�÷� �ڵ� */
    memberCode NUMBER(7) /* ȸ���ڵ� */
);
/* sequence for chatRoomMemberCode is ChatRoomMember pk : */
create sequence ChatRoomMember
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE ChatRoomMember IS 'ä�÷� �ο�';
COMMENT ON COLUMN ChatRoomMember.chatRoomMemberCode IS 'ä�ÿ� �ο� �ڵ�';
COMMENT ON COLUMN ChatRoomMember.memberCode IS 'ä�÷� �ο��� ȸ�� �ڵ�';
COMMENT ON COLUMN ChatRoomMember.ChatRoomCode IS 'ä�÷� �ڵ�';
/* index of ChatRoomMember.chatRoomMemberCode : ASC */
CREATE UNIQUE INDEX PK_ChatRoomMember ON ChatRoomMember ( chatRoomMemberCode ASC );
/* contraint : PK_ChatRoomMember */
ALTER TABLE ChatRoomMember ADD CONSTRAINT PK_ChatRoomMember PRIMARY KEY ( chatRoomMemberCode );
--------------------------------------------------------------------------------
/* 23. �ñ��� */
CREATE TABLE Sigungu (
   sigunguCode NUMBER(7) NOT NULL, /* �ñ��� �ڵ� */
   sigunguCodeName NVARCHAR2(50) NOT NULL, /* �ڵ� �� */
   sidoCode NUMBER(7) NOT NULL /* �õ� �ڵ� */
);
/* No need for sequence */
COMMENT ON TABLE Sigungu IS '�ñ���, ���������� ���';
COMMENT ON COLUMN Sigungu.sigunguCode IS '�ñ��� �ڵ�';
COMMENT ON COLUMN Sigungu.sigunguCodeName IS '�ñ��� �̸�';
COMMENT ON COLUMN Sigungu.sidoCode IS '�õ� �ڵ�';
/* index of Sigungu.sigunguCode : ASC */
CREATE UNIQUE INDEX PK_Sigungu ON Sigungu ( sigunguCode ASC );
/* contraint : Sigungu.sigunguCode */
ALTER TABLE Sigungu ADD CONSTRAINT PK_Sigungu PRIMARY KEY ( sigunguCode );
--------------------------------------------------------------------------------
/* 24. �ݷ����� */
CREATE TABLE Pet (
   petCode NUMBER(7) NOT NULL, /* �ݷ����� �ڵ� */
   memberCode NUMBER(7) NOT NULL,
   petName NVARCHAR2(10), /* �̸� */
   BreedCode NUMBER(7), /* ǰ���ڵ� */
   sexCode NUMBER(1) DEFAULT 0 /* ���� �ڵ� */
);
/* sequence for petCode is Pet pk : */
create sequence Pet
    increment by 1
    start with 1
    maxValue 9999999 
    cycle;
/* �ּ� */
COMMENT ON TABLE Pet IS '�ݷ�����';
COMMENT ON COLUMN Pet.petCode IS '�ݷ����� �ڵ�';
COMMENT ON COLUMN Pet.petName IS '�̸�';
COMMENT ON COLUMN Pet.BreedCode IS 'ǰ���ڵ�, +���� �ڵ�';
COMMENT ON COLUMN Pet.sexCode IS '���� �ڵ�, +�߼�ȭ �ڵ�';
/* index of Pet.petCode : ASC */
CREATE UNIQUE INDEX PK_Pet ON Pet ( petCode ASC );
/* contraint : PK_Pet */
ALTER TABLE Pet ADD CONSTRAINT PK_Pet PRIMARY KEY ( petCode );
--------------------------------------------------------------------------------
/* 25. ȸ������ �������� */
CREATE TABLE TABLE (
   memberCode NUMBER(7) NOT NULL, /* ȸ���ڵ� */
   DelDate TIMESTAMP, /* ������û�� */
   COL2 TIMESTAMP /* ���������� */
);

COMMENT ON TABLE TABLE IS 'ȸ������ ��������';
COMMENT ON COLUMN TABLE.memberCode IS 'ȸ���ڵ�';
COMMENT ON COLUMN TABLE.DelDate IS '������û��';
COMMENT ON COLUMN TABLE.COL2 IS '����������';

CREATE UNIQUE INDEX PK_TABLE
   ON TABLE (
      memberCode ASC
   );

ALTER TABLE TABLE
   ADD
      CONSTRAINT PK_TABLE
      PRIMARY KEY (
         memberCode
      );
      
--------------------------------------------------------------------------------
/* 26. ���� */
CREATE TABLE Lecturer (
   lecturerCode NUMBER(7) NOT NULL, /* �����ڵ� */
   lecturerHist NVARCHAR2(300), /* ���翬�� */
   memberCode NUMBER(7) /* ȸ���ڵ� */
);

COMMENT ON TABLE Lecturer IS '����';
COMMENT ON COLUMN Lecturer.lecturerCode IS '�����ڵ�';
COMMENT ON COLUMN Lecturer.lecturerHist IS '���翬��';
COMMENT ON COLUMN Lecturer.memberCode IS 'ȸ���ڵ�';

CREATE UNIQUE INDEX PK_Lecturer
   ON Lecturer (
      lecturerCode ASC
   );

ALTER TABLE Lecturer
   ADD
      CONSTRAINT PK_Lecturer
      PRIMARY KEY (
         lecturerCode
      );
--------------------------------------------------------------------------------
/* 27. ���� ����  */
CREATE TABLE ParentingService (
   ParentingCode NUMBER NOT NULL, /* ���� �ڵ� */
   GalleryNum NUMBER(3) NOT NULL, /* �� ��ȣ */
   GalleryList NVARCHAR2(10) NOT NULL, /* ��� */
   GalleryLike NUMBER(4), /* ���ƿ� �� */
   GalleryHit NUMBER(4) NOT NULL, /* ��ȸ�� */
   GalleryDate DATE NOT NULL, /* �ۼ���¥ */
   GalleryPic UriType, /* ���� */
   GalleryContent NVARCHAR2(100) NOT NULL, /* ���� */
   bGalleryTitle NVARCHAR2(20) NOT NULL, /* ���� */
   abAnimalCode NUMBER(20) /* �����ȣ �ڵ� */
);

COMMENT ON TABLE ParentingService IS '���� ���� ';
COMMENT ON COLUMN ParentingService.ParentingCode IS '���� �ڵ�';
COMMENT ON COLUMN ParentingService.GalleryNum IS '�� ��ȣ';
COMMENT ON COLUMN ParentingService.GalleryList IS '���';
COMMENT ON COLUMN ParentingService.GalleryLike IS '���ƿ� ��';
COMMENT ON COLUMN ParentingService.GalleryHit IS '��ȸ��';
COMMENT ON COLUMN ParentingService.GalleryDate IS '�ۼ���¥';
COMMENT ON COLUMN ParentingService.GalleryPic IS '����';
COMMENT ON COLUMN ParentingService.GalleryContent IS '����';
COMMENT ON COLUMN ParentingService.bGalleryTitle IS '����';
COMMENT ON COLUMN ParentingService.abAnimalCode IS '�����ȣ �ڵ�';

CREATE UNIQUE INDEX PK_ParentingService
   ON ParentingService (
      ParentingCode ASC
   );

ALTER TABLE ParentingService
   ADD
      CONSTRAINT PK_ParentingService
      PRIMARY KEY (
         ParentingCode
      );
--------------------------------------------------------------------------------
/* 28. ���θ��ּ� */
CREATE TABLE RoadAddress (
   roadNameCode NUMBER(7) NOT NULL, /* ���θ� �ּ� �ڵ� */
   roadAddr String NOT NULL, /* ��ü ���θ� �ּ� */
   roadAddrPt1 String, /* ���θ��ּ�(�����׸� ����) */
   roadAddrPt2 String, /* ���θ��ּ� �����׸� */
   jibunAddr String, /* ���� ���� */
   engAddr String, /* ���θ��ּ�(����) */
   zipNum NUMBER , /* ������ȣ */
   admDivCode NUMBER, /* ���������ڵ� */
   roadMgmtCode NUMBER, /* ���θ��ڵ� */
   bldgMgmtNum NUMBER, /* �ǹ�������ȣ */
   detailBldgNumList String, /* �󼼰ǹ��� */
   bldgNum String, /* �ǹ��� */
   aptYesNo String, /* �������ÿ���  */
   sidoName String, /* �õ��� */
   sigunguName String, /* �ñ����� */
   eupmyundongdName String, /* ���鵿�� */
   liName String, /* �������� */
   roadName String, /* ���θ� */
   undergroundYesNo String, /* ���Ͽ��� */
   bldgMainNum NUMBER, /* �ǹ����� */
   buldSubNum NUMBER /* �ǹ��ι� */
);

COMMENT ON TABLE RoadAddress IS '���θ��ּ�';
COMMENT ON COLUMN RoadAddress.roadNameCode IS '���θ� �ּ� �ڵ�';
COMMENT ON COLUMN RoadAddress.roadAddr IS 'Y';
COMMENT ON COLUMN RoadAddress.roadAddrPt1 IS 'Y';
COMMENT ON COLUMN RoadAddress.roadAddrPt2 IS 'N';
COMMENT ON COLUMN RoadAddress.jibunAddr IS 'Y';
COMMENT ON COLUMN RoadAddress.engAddr IS 'Y';
COMMENT ON COLUMN RoadAddress.zipNum IS 'Y';
COMMENT ON COLUMN RoadAddress.admDivCode IS 'Y';
COMMENT ON COLUMN RoadAddress.roadMgmtCode IS 'Y';
COMMENT ON COLUMN RoadAddress.bldgMgmtNum IS 'Y';
COMMENT ON COLUMN RoadAddress.detailBldgNumList IS 'N';
COMMENT ON COLUMN RoadAddress.bldgNum IS 'N';
COMMENT ON COLUMN RoadAddress.aptYesNo IS 'Y (1:��������, 0: ���������)';
COMMENT ON COLUMN RoadAddress.sidoName IS 'Y';
COMMENT ON COLUMN RoadAddress.sigunguName IS 'N';
COMMENT ON COLUMN RoadAddress.eupmyundongdName IS 'Y';
COMMENT ON COLUMN RoadAddress.liName IS 'N';
COMMENT ON COLUMN RoadAddress.roadName IS 'Y';
COMMENT ON COLUMN RoadAddress.undergroundYesNo IS 'Y (0:����, 1:����)';
COMMENT ON COLUMN RoadAddress.bldgMainNum IS 'Y';
COMMENT ON COLUMN RoadAddress.buldSubNum IS 'Y (�ι��� ���� ��� 0)';

CREATE UNIQUE INDEX PK_RoadAddress ON RoadAddress ( roadNameCode ASC );

ALTER TABLE RoadAddress ADD CONSTRAINT PK_RoadAddress PRIMARY KEY ( roadNameCode );
--------------------------------------------------------------------------------
/* 29. �ּ� <- �ñ��� �ڵ�� ���θ� �ּҸ� �������ִ� ���̺�... */
CREATE TABLE Address (
   roadNameCode NUMBER(7) NOT NULL, /* ���θ� �ּ� �ڵ� */
   sigunguCode NUMBER(7) /* �ñ��� �ڵ� */
);

COMMENT ON TABLE Address IS '�ּ�';
COMMENT ON COLUMN Address.roadNameCode IS '���θ� �ּ� �ڵ�';
COMMENT ON COLUMN Address.sigunguCode IS '�ñ��� �ڵ�';

CREATE UNIQUE INDEX PK_Address ON Address ( roadNameCode ASC );

ALTER TABLE Address ADD CONSTRAINT PK_Address PRIMARY KEY ( roadNameCode );

--------------------------------------------------------------------------------
ALTER TABLE AbandonedAnimal
   ADD
      CONSTRAINT FK_ǰ��_TO_AbandonedAnimal
      FOREIGN KEY (
         BreedCode
      )
      REFERENCES ǰ�� (
         ǰ���ڵ�
      );

ALTER TABLE AbandonedAnimal
   ADD
      CONSTRAINT FK_Shelter_TO_AbandonedAnimal
      FOREIGN KEY (
         shelterCode
      )
      REFERENCES Shelter (
         shelterCode
      );

ALTER TABLE AbandonedAnimal
   ADD
      CONSTRAINT FK_Sex_TO_AbandonedAnimal
      FOREIGN KEY (
         abSex
      )
      REFERENCES Sex (
         sexCode
      );

ALTER TABLE AbandonedAnimal
   ADD
      CONSTRAINT FK_BreedCode_TO_AbandonedAnimal
      FOREIGN KEY (
         BreedCode
      )
      REFERENCES BreedCode (
         BreedCode
      );

ALTER TABLE AbandonedAnimal
   ADD
      CONSTRAINT FK_Address_TO_AbandonedAnimal
      FOREIGN KEY (
         roadNameCode
      )
      REFERENCES Address (
         roadNameCode
      );

ALTER TABLE MemberInfo
   ADD
      CONSTRAINT FK_Pet_TO_MemberInfo
      FOREIGN KEY (
         petCode
      )
      REFERENCES Pet (
         petCode
      );

ALTER TABLE MemberInfo
   ADD
      CONSTRAINT FK_Address_TO_MemberInfo
      FOREIGN KEY (
         roadNameCode
      )
      REFERENCES Address (
         roadNameCode
      );

ALTER TABLE Seminar
   ADD
      CONSTRAINT FK_Lecturer_TO_Seminar
      FOREIGN KEY (
         lecturerCode
      )
      REFERENCES Lecturer (
         lecturerCode
      );

ALTER TABLE Shelter
   ADD
      CONSTRAINT FK_Address_TO_Shelter
      FOREIGN KEY (
         roadNameCode
      )
      REFERENCES Address (
         roadNameCode
      );

ALTER TABLE Shelter
   ADD
      CONSTRAINT FK_AnimalType_TO_Shelter
      FOREIGN KEY (
         animalTypeCode
      )
      REFERENCES AnimalType (
         animalTypeCode
      );

ALTER TABLE ���� 
   ADD
      CONSTRAINT FK_AbandonedAnimal_TO_���� 
      FOREIGN KEY (
         abAnimalCode
      )
      REFERENCES AbandonedAnimal (
         abAnimalCode
      );

ALTER TABLE ���� 
   ADD
      CONSTRAINT FK_Sigungu_TO_���� 
      FOREIGN KEY (
         sigunguCode
      )
      REFERENCES Sigungu (
         sigunguCode
      );

ALTER TABLE Witness
   ADD
      CONSTRAINT FK_BreedCode_TO_Witness
      FOREIGN KEY (
         BreedCode
      )
      REFERENCES BreedCode (
         BreedCode
      );

ALTER TABLE Witness
   ADD
      CONSTRAINT FK_AnimalType_TO_Witness
      FOREIGN KEY (
         animalTypeCode
      )
      REFERENCES AnimalType (
         animalTypeCode
      );

ALTER TABLE Witness
   ADD
      CONSTRAINT FK_Sex_TO_Witness
      FOREIGN KEY (
         sexCode
      )
      REFERENCES Sex (
         sexCode
      );

ALTER TABLE Witness
   ADD
      CONSTRAINT FK_Address_TO_Witness
      FOREIGN KEY (
         roadNameCode
      )
      REFERENCES Address (
         roadNameCode
      );

ALTER TABLE Sex
   ADD
      CONSTRAINT FK_Neuter_TO_Sex
      FOREIGN KEY (
         neuterCode
      )
      REFERENCES Neuter (
         neuterCode
      );

ALTER TABLE AbandonedAnimalReservation
   ADD
      CONSTRAINT FK_AbandonedAnimal_TO_AbandonedAnimalReservation
      FOREIGN KEY (
         abAnimalCode
      )
      REFERENCES AbandonedAnimal (
         abAnimalCode
      );

ALTER TABLE AbandonedAnimalReservation
   ADD
      CONSTRAINT FK_Shelter_TO_AbandonedAnimalReservation
      FOREIGN KEY (
         shelterCode
      )
      REFERENCES Shelter (
         shelterCode
      );

ALTER TABLE AbandonedAnimalReservation
   ADD
      CONSTRAINT FK_MemberInfo_TO_AbandonedAnimalReservation
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE SeminarReservation
   ADD
      CONSTRAINT FK_MemberInfo_TO_SeminarReservation
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE SeminarReservation
   ADD
      CONSTRAINT FK_Seminar_TO_SeminarReservation
      FOREIGN KEY (
         seminarCode
      )
      REFERENCES Seminar (
         seminarCode
      );

ALTER TABLE Board
   ADD
      CONSTRAINT FK_Reply_TO_Board
      FOREIGN KEY (
         replyCode
      )
      REFERENCES Reply (
         replyCode
      );

ALTER TABLE Board
   ADD
      CONSTRAINT FK_MemberInfo_TO_Board
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE Reply
   ADD
      CONSTRAINT FK_Reply_TO_Reply
      FOREIGN KEY (
         replyCodeHigh
      )
      REFERENCES Reply (
         replyCode
      );

ALTER TABLE Reply
   ADD
      CONSTRAINT FK_Reply_TO_Reply2
      FOREIGN KEY (
         replyCodeLow
      )
      REFERENCES Reply (
         replyCode
      );

ALTER TABLE ChatMessage
   ADD
      CONSTRAINT FK_ChatRoom_TO_ChatMessage
      FOREIGN KEY (
         ChatRoomCode
      )
      REFERENCES ChatRoom (
         ChatRoomCode
      );

ALTER TABLE ChatMessage
   ADD
      CONSTRAINT FK_MemberInfo_TO_ChatMessage
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE BreedCode
   ADD
      CONSTRAINT FK_AnimalType_TO_BreedCode
      FOREIGN KEY (
         animalTypeCode
      )
      REFERENCES AnimalType (
         animalTypeCode
      );

ALTER TABLE Sigungu
   ADD
      CONSTRAINT FK_Sido_TO_Sigungu
      FOREIGN KEY (
         sidoCode
      )
      REFERENCES Sido (
         sidoCode
      );

ALTER TABLE Address
   ADD
      CONSTRAINT FK_Sigungu_TO_Address
      FOREIGN KEY (
         sigunguCode
      )
      REFERENCES Sigungu (
         sigunguCode
      );

ALTER TABLE Address
   ADD
      CONSTRAINT FK_RoadAddress_TO_Address
      FOREIGN KEY (
         roadNameCode
      )
      REFERENCES RoadAddress (
         roadNameCode
      );

ALTER TABLE Lecturer
   ADD
      CONSTRAINT FK_MemberInfo_TO_Lecturer
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE ChatRoomMember
   ADD
      CONSTRAINT FK_MemberInfo_TO_ChatRoomMember
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE ChatRoomMember
   ADD
      CONSTRAINT FK_ChatRoom_TO_ChatRoomMember
      FOREIGN KEY (
         ChatRoomCode
      )
      REFERENCES ChatRoom (
         ChatRoomCode
      );

ALTER TABLE Pet
   ADD
      CONSTRAINT FK_Sex_TO_Pet
      FOREIGN KEY (
         sexCode
      )
      REFERENCES Sex (
         sexCode
      );

ALTER TABLE Pet
   ADD
      CONSTRAINT FK_BreedCode_TO_Pet
      FOREIGN KEY (
         BreedCode
      )
      REFERENCES BreedCode (
         BreedCode
      );

ALTER TABLE Pet
   ADD
      CONSTRAINT FK_Neuter_TO_Pet
      FOREIGN KEY (
         neuterCode
      )
      REFERENCES Neuter (
         neuterCode
      );

ALTER TABLE TABLE
   ADD
      CONSTRAINT FK_MemberInfo_TO_TABLE
      FOREIGN KEY (
         memberCode
      )
      REFERENCES MemberInfo (
         memberCode
      );

ALTER TABLE ParentingService
   ADD
      CONSTRAINT FK_AbandonedAnimal_TO_ParentingService
      FOREIGN KEY (
         abAnimalCode
      )
      REFERENCES AbandonedAnimal (
         abAnimalCode
      );