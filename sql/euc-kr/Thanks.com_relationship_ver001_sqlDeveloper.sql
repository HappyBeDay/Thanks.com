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