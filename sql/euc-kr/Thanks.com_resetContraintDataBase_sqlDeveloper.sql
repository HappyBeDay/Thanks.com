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
