-- 1. ���⵿�� : AbandonedAnimal 
/* 1-1 ǰ���ڵ� */
ALTER TABLE AbandonedAnimal 
    ADD CONSTRAINT FK_Breed_TO_AbandonedAnimal
    FOREIGN KEY ( BreedCode ) REFERENCES Breed ( BreedCode );
    
/* 1-2 �����ڵ� */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_AnimalType_TO_AbandonedAnimal
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );
        
/* 1-4 ��ȣ���ڵ� */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_Shelter_TO_AbandonedAnimal
    FOREIGN KEY ( shelterCode ) REFERENCES Shelter ( shelterCode );

/* 1-3 �����ڵ� */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_Sex_TO_AbandonedAnimal
    FOREIGN KEY ( sexCode ) REFERENCES Sex ( sexCode );

/* 1-5 �ּ��ڵ� */
ALTER TABLE AbandonedAnimal
    ADD CONSTRAINT FK_Address_TO_AbandonedAnimal 
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 2. ȸ�� : MemberInfo
/* 2-1 �����ڵ� */
ALTER TABLE MemberInfo
    ADD CONSTRAINT FK_Authorize_TO_MemberInfo
    FOREIGN KEY ( authorizeCode ) REFERENCES Authorize ( authorizeCode );

/* 2-2 �ݷ������ڵ� */
ALTER TABLE MemberInfo
    ADD CONSTRAINT FK_Pet_TO_MemberInfo
    FOREIGN KEY ( petCode ) REFERENCES Pet ( petCode );

/* 2-3 �ּ��ڵ� */
ALTER TABLE MemberInfo
    ADD CONSTRAINT FK_Address_TO_MemberInfo
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 3. ���̳� : Seminar
/* 3-1 �����ڵ� */
ALTER TABLE Seminar
    ADD CONSTRAINT FK_Lecturer_TO_Seminar
    FOREIGN KEY ( lecturerCode ) REFERENCES Lecturer ( lecturerCode );
--------------------------------------------------------------------------------
-- 4. ��� : Stats
--------------------------------------------------------------------------------
-- 5. �õ� : Sido
--------------------------------------------------------------------------------
-- 6. ��ȣ�� : Shelter
/* 6-1 �ּ��ڵ�*/
ALTER TABLE Shelter
    ADD CONSTRAINT FK_Address_TO_Shelter
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 7. �����׷� : AnimalGroup
/* 7-1 ��ȣ���ڵ� */
ALTER TABLE AnimalGroup
    ADD CONSTRAINT FK_Shelter_TO_AnimalGroup
    FOREIGN KEY ( shelterCode ) REFERENCES Shelter ( shelterCode );

/* 7-2 �����ڵ� */
ALTER TABLE AnimalGroup
    ADD CONSTRAINT FK_AnimalType_TO_AnimalGroup
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );
--------------------------------------------------------------------------------
-- 8. ���� : AnimailType
--------------------------------------------------------------------------------
-- 9. ǰ�� : Breed
ALTER TABLE Breed 
    ADD CONSTRAINT FK_AnimalType_TO_BreedCode 
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );
--------------------------------------------------------------------------------
-- 10. ���-���� : Witness
/* 10-1 �����ڵ� */
ALTER TABLE Witness
    ADD CONSTRAINT FK_Sex_TO_Witness
    FOREIGN KEY ( sexCode ) REFERENCES Sex ( sexCode );

/* 10-2 �����ڵ� */
ALTER TABLE Witness
    ADD CONSTRAINT FK_AnimalType_TO_Witness 
    FOREIGN KEY ( animalTypeCode ) REFERENCES AnimalType ( animalTypeCode );

/* 10-3 ǰ���ڵ� */
ALTER TABLE Witness
    ADD CONSTRAINT FK_Breed_TO_Witness
    FOREIGN KEY ( BreedCode ) REFERENCES Breed ( BreedCode );

/* 10-4 �ּ��ڵ� */
ALTER TABLE Witness
    ADD CONSTRAINT FK_Address_TO_Witness 
    FOREIGN KEY ( addressCode ) REFERENCES Address ( addressCode );
--------------------------------------------------------------------------------
-- 11. ���� : Sex
ALTER TABLE Sex
    ADD CONSTRAINT FK_Neuter_TO_Sex
    FOREIGN KEY ( neuterCode ) REFERENCES Neuter ( neuterCode );
--------------------------------------------------------------------------------
-- 12. �߼�ȭ : Neuter
--------------------------------------------------------------------------------
-- 13. ���� ���� ���� : AbandonedAnimalReservation
/* 13-1 ���⵿���ڵ� */
ALTER TABLE AbandonedAnimalReservation
    ADD CONSTRAINT FK_AbandonedAnimal_TO_AbandonedAnimalReservation
    FOREIGN KEY ( abAnimalCode ) REFERENCES AbandonedAnimal ( abAnimalCode );

/* 13-2 ��ȣ���ڵ� */
ALTER TABLE AbandonedAnimalReservation
    ADD CONSTRAINT FK_Shelter_TO_AbandonedAnimalReservation
    FOREIGN KEY ( shelterCode ) REFERENCES Shelter ( shelterCode );

/* 13-3 ȸ���ڵ� */
ALTER TABLE AbandonedAnimalReservation
    ADD CONSTRAINT FK_MemberInfo_TO_AbandonedAnimalReservation
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );

--------------------------------------------------------------------------------
-- 14. ���̳� ���� : SeminarReservation
/* 14-2 ȸ���ڵ� */
ALTER TABLE SeminarReservation
    ADD CONSTRAINT FK_MemberInfo_TO_SeminarReservation
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );

/* 14-1 �������ڵ� */
ALTER TABLE SeminarReservation
    ADD CONSTRAINT FK_Seminar_TO_SeminarReservation
    FOREIGN KEY ( seminarCode ) REFERENCES Seminar ( seminarCode );
    
--------------------------------------------------------------------------------
-- 15. �Խ��� : BoardType
--------------------------------------------------------------------------------
-- 16. �Խñ� : Board
/* 16-1 ȸ���ڵ� */   
ALTER TABLE Board
    ADD CONSTRAINT FK_MemberInfo_TO_Board
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
    
/* 16-2 �Խ����ڵ� */
ALTER TABLE Board
    ADD CONSTRAINT FK_BoardType_TO_Board
    FOREIGN KEY ( boardTypeCode ) REFERENCES BoardType ( boardTypeCode );
    
/* 16-3 ����ڵ� */
ALTER TABLE Board
    ADD CONSTRAINT FK_Reply_TO_Board
    FOREIGN KEY ( replyGroupCode ) REFERENCES ReplyGroup ( replyGroupCode );   
--------------------------------------------------------------------------------
-- 17.��۱׷� : ReplyGroup
/* 17-1 �Խ����ڵ� */
ALTER TABLE ReplyGroup
    ADD CONSTRAINT FK_Board_TO_ReplyGroup
    FOREIGN KEY ( boardCode ) REFERENCES Board ( boardCode );
/* 17-2 ����ڵ� */
ALTER TABLE ReplyGroup
    ADD CONSTRAINT FK_Reply_TO_ReplyGroup
    FOREIGN KEY ( replyCode ) REFERENCES Reply ( replyCode );
--------------------------------------------------------------------------------
-- 18. ��� : Reply
--------------------------------------------------------------------------------
-- 19. ���� : Authorize
--------------------------------------------------------------------------------
-- 20. ä�ø޼��� : ChatMessage
/* 20-1 ä�÷��ڵ� */
ALTER TABLE ChatMessage
    ADD CONSTRAINT FK_ChatRoom_TO_ChatMessage
    FOREIGN KEY ( ChatRoomCode ) REFERENCES ChatRoom ( ChatRoomCode );
--------------------------------------------------------------------------------
-- 21. ä�÷� : ChatRoom
/* 21-1 ä�ø޽����ڵ� */
ALTER TABLE ChatRoom
    ADD CONSTRAINT FK_ChatRoom_TO_ChatRoom
    FOREIGN KEY ( ChatRoomCode ) REFERENCES ChatRoom ( ChatRoomCode );
    
/* 21-2 ä�÷��ο��ڵ� */
ALTER TABLE ChatRoom
    ADD CONSTRAINT FK_ChatMessage_TO_ChatRoom
    FOREIGN KEY ( chatMessageCode ) REFERENCES ChatMessage ( chatMessageCode );
--------------------------------------------------------------------------------
-- 22. ä�÷��ο� : ChatRoomMember
/* 22-1 ����ڵ� */
ALTER TABLE ChatRoomMember
    ADD CONSTRAINT FK_MemberInfo_TO_ChatRoomMember
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );

/* 22-2 ä�÷��ڵ� */
ALTER TABLE ChatRoomMember
    ADD CONSTRAINT FK_ChatRoom_TO_ChatRoomMember
    FOREIGN KEY ( ChatRoomCode ) REFERENCES ChatRoom ( ChatRoomCode );
--------------------------------------------------------------------------------
-- 23. �ñ��� : Sigungu
/* 23-1 �õ��ڵ� */
ALTER TABLE Sigungu
    ADD CONSTRAINT FK_Sido_TO_Sigungu
    FOREIGN KEY ( sidoCode ) REFERENCES Sido ( sidoCode );
--------------------------------------------------------------------------------
-- 24. �ݷ����� : Pet
/* 24-1 ȸ���ڵ� */
ALTER TABLE Pet
    ADD CONSTRAINT FK_MemberInfo_TO_Pet 
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
    
/* 24-2 �����ڵ� */
ALTER TABLE Pet
    ADD CONSTRAINT FK_Sex_TO_Pet
    FOREIGN KEY ( sexCode ) REFERENCES Sex ( sexCode );

/* 24-3 ǰ���ڵ� */
ALTER TABLE Pet
    ADD CONSTRAINT FK_Breed_TO_Pet
    FOREIGN KEY ( BreedCode ) REFERENCES Breed ( BreedCode );
--------------------------------------------------------------------------------
-- 25. ȸ������ �������� : DelMemberInfoRet
/* 25-1 */
ALTER TABLE DelMemInfoRet
    ADD CONSTRAINT FK_MemberInfo_TO_DelMemInfoRet
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
--------------------------------------------------------------------------------
-- 26. ���� : Lecturer
/* 26-1 ȸ���ڵ� */
ALTER TABLE Lecturer
    ADD CONSTRAINT FK_MemberInfo_TO_Lecturer
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
--------------------------------------------------------------------------------
-- 27. ���� : ParentingService
/* 27-1 ȸ���ڵ� */
ALTER TABLE ParentingService
    ADD CONSTRAINT FK_MemberInfo_TO_ParentingService
    FOREIGN KEY ( memberCode ) REFERENCES MemberInfo ( memberCode );
    
/* 27-1 �������ڵ� */
ALTER TABLE ParentingService
    ADD CONSTRAINT FK_Gallery_TO_ParentingService
    FOREIGN KEY ( GalleryCode ) REFERENCES Gallery ( GalleryCode );
    
/* 27-1 ���⵿���ڵ� */
ALTER TABLE ParentingService
    ADD CONSTRAINT FK_AbandonedAnimal_TO_ParentingService
    FOREIGN KEY ( abAnimalCode ) REFERENCES AbandonedAnimal ( abAnimalCode );
--------------------------------------------------------------------------------
-- 28. ������ : Gallery
/* 28-1 ���������ڵ� */
ALTER TABLE Gallery
    ADD CONSTRAINT FK_ParentingService_TO_Gallery
    FOREIGN KEY ( ParentingServiceCode ) REFERENCES ParentingService ( ParentingServiceCode );
--------------------------------------------------------------------------------
-- 29. ���θ��ּ� : RoadAddress
--------------------------------------------------------------------------------
-- 30. �ּ� : Address
/* 30-1 ���θ��ּ��ڵ� */
ALTER TABLE Address
    ADD CONSTRAINT FK_Sigungu_TO_Address
    FOREIGN KEY ( sigunguCode ) REFERENCES Sigungu ( sigunguCode );

/* 30-2 �ñ����ڵ� */
ALTER TABLE Address
    ADD CONSTRAINT FK_RoadAddress_TO_Address
    FOREIGN KEY ( roadNameCode ) REFERENCES RoadAddress ( roadNameCode );
--------------------------------------------------------------------------------