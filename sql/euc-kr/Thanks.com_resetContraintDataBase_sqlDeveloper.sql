-- 1. ���⵿�� : AbandonedAnimal 
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Breed_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_AnimalType_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Shelter_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Sex_TO_AbandonedAnimal;
ALTER TABLE AbandonedAnimal DROP CONSTRAINT FK_Address_TO_AbandonedAnimal;

-- 2. ȸ�� : MemberInfo
ALTER TABLE MemberInfo DROP CONSTRAINT FK_Authorize_TO_MemberInfo;
ALTER TABLE MemberInfo DROP CONSTRAINT FK_Pet_TO_MemberInfo;
ALTER TABLE MemberInfo DROP CONSTRAINT FK_Address_TO_MemberInfo;

-- 3. ���̳� : Seminar
ALTER TABLE Seminar DROP CONSTRAINT FK_Lecturer_TO_Seminar;

-- 4. ��� : Stats

-- 5. �õ� : Sido

-- 6. ��ȣ�� : Shelter
ALTER TABLE Shelter DROP CONSTRAINT FK_Address_TO_Shelter;

-- 7. �����׷� : AnimalGroup
ALTER TABLE AnimalGroup DROP CONSTRAINT FK_Shelter_TO_AnimalGroup;
ALTER TABLE AnimalGroup DROP CONSTRAINT FK_AnimalType_TO_AnimalGroup;

-- 8. ���� : AnimailType

-- 9. ǰ�� : Breed
ALTER TABLE Breed DROP CONSTRAINT FK_AnimalType_TO_BreedCode;

-- 10. ���-���� : Witness
ALTER TABLE Witness DROP CONSTRAINT FK_Sex_TO_Witness;
ALTER TABLE Witness DROP CONSTRAINT FK_AnimalType_TO_Witness;
ALTER TABLE Witness DROP CONSTRAINT FK_Breed_TO_Witness;
ALTER TABLE Witness DROP CONSTRAINT FK_Address_TO_Witness;

-- 11. ���� : Sex
ALTER TABLE Sex DROP CONSTRAINT FK_Neuter_TO_Sex;

-- 12. �߼�ȭ : Neuter

-- 13. ���� ���� ���� : AbandonedAnimalReservation
ALTER TABLE AbandonedAnimalReservation DROP CONSTRAINT FK_AbandonedAnimal_TO_AbandonedAnimalReservation;
ALTER TABLE AbandonedAnimalReservation DROP CONSTRAINT FK_Shelter_TO_AbandonedAnimalReservation;
ALTER TABLE AbandonedAnimalReservation DROP CONSTRAINT FK_MemberInfo_TO_AbandonedAnimalReservation;

-- 14. ���̳� ���� : SeminarReservation
ALTER TABLE SeminarReservation DROP CONSTRAINT FK_MemberInfo_TO_SeminarReservation;
ALTER TABLE SeminarReservation DROP CONSTRAINT FK_Seminar_TO_SeminarReservation;

-- 15. �Խ��� : BoardType

-- 16. �Խñ� : Board
ALTER TABLE Board DROP CONSTRAINT FK_MemberInfo_TO_Board;
ALTER TABLE Board DROP CONSTRAINT FK_BoardType_TO_Board;
ALTER TABLE Board DROP CONSTRAINT FK_Reply_TO_Board;

-- 17.��۱׷� : ReplyGroup
ALTER TABLE ReplyGroup DROP CONSTRAINT FK_Board_TO_ReplyGroup;
ALTER TABLE ReplyGroup DROP CONSTRAINT FK_Reply_TO_ReplyGroup;

-- 18. ��� : Reply

-- 19. ���� : Authorize

-- 20. ä�ø޼��� : ChatMessage
ALTER TABLE ChatMessage DROP CONSTRAINT FK_ChatRoom_TO_ChatMessage;

-- 21. ä�÷� : ChatRoom
ALTER TABLE ChatRoom DROP CONSTRAINT FK_ChatRoom_TO_ChatRoom;
ALTER TABLE ChatRoom DROP CONSTRAINT FK_ChatMessage_TO_ChatRoom;

-- 22. ä�÷��ο� : ChatRoomMember
ALTER TABLE ChatRoomMember DROP CONSTRAINT FK_MemberInfo_TO_ChatRoomMember;
ALTER TABLE ChatRoomMember DROP CONSTRAINT FK_ChatRoom_TO_ChatRoomMember;

-- 23. �ñ��� : Sigungu
ALTER TABLE Sigungu DROP CONSTRAINT FK_Sido_TO_Sigungu;

-- 24. �ݷ����� : Pet
ALTER TABLE Pet DROP CONSTRAINT FK_MemberInfo_TO_Pet;
ALTER TABLE Pet DROP CONSTRAINT FK_Sex_TO_Pet;
ALTER TABLE Pet DROP CONSTRAINT FK_Breed_TO_Pet;

-- 25. ȸ������ �������� : DelMemberInfoRet
ALTER TABLE DelMemInfoRet DROP CONSTRAINT FK_MemberInfo_TO_DelMemInfoRet;

-- 26. ���� : Lecturer
ALTER TABLE Lecturer DROP CONSTRAINT FK_MemberInfo_TO_Lecturer;

-- 27. ���� : ParentingService
ALTER TABLE ParentingService DROP CONSTRAINT FK_MemberInfo_TO_ParentingService;
ALTER TABLE ParentingService DROP CONSTRAINT FK_Gallery_TO_ParentingService;
ALTER TABLE ParentingService DROP CONSTRAINT FK_AbandonedAnimal_TO_ParentingService;

-- 28. ������ : Gallery
ALTER TABLE Gallery DROP CONSTRAINT FK_ParentingService_TO_Gallery;

-- 29. ���θ��ּ� : RoadAddress

-- 30. �ּ� : Address
ALTER TABLE Address DROP CONSTRAINT FK_Sigungu_TO_Address;
ALTER TABLE Address DROP CONSTRAINT FK_Sigungu_TO_Address;
