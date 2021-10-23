/* 1. ���⵿�� */
drop table AbandonedAnimal purge;
drop index PK_AbandonedAnimal;

/* 2. ȸ�� */
drop table MemberInfo purge;
drop sequence MemberInfo_seq;
drop index PK_MemberInfo;

/* 3. ���̳� */
drop table Seminar purge;
drop sequence Seminar_seq;
drop index PK_Seminar;

/* 4. ��� */
drop table Stats purge;
drop index PK_Status;

/* 5. �õ� */
drop table Sido purge;
drop index PK_Seminar;

/* 6. ���̳� */
drop table Shelter purge;
drop sequence Shelter_seq;
drop index PK_Shelter;

/* 7. �����׷� */
drop table AnimalGroup purge;
drop sequence AnimalGroup_seq;
drop index PK_AnimalGroup;

/* 8. ���� */
drop table AnimalType purge;
drop index PK_AnimalType;

/* 9. ǰ�� */
drop table Breed purge;
drop index PK_BreedCode;

/* 10. ��� & ���� */
drop table Witness purge;
drop sequence Witness_seq;
drop index PK_Witness;

/* 11. ���� */
drop table Sex purge;
drop index PK_Sex;

/* 12. �߼�ȭ */
drop table Neuter purge;
drop index PK_Neuter;

/* 13. ���⵿�� ���� */
drop table AbandonedAnimalReservation purge;
drop sequence AbandonedAnimalReservation_seq;
drop index PK_AbandonedAnimalReservation;

/* 14. ���̳� ���� */
drop table SeminarReservation purge;
drop sequence SeminarReservation_seq;
drop index PK_SeminarReservation;

/* 15. �Խ��� (�Խñ� ����) */
drop table BoardType purge;
drop sequence BoardType_seq;
drop index PK_BoardType;

/* 16. �Խñ� */
drop table Board purge;
drop sequence Board_seq;
drop index PK_Board;

/* 17. ���̳� */
drop table ReplyGroup purge;
drop sequence ReplyGroup_seq;
drop index PK_ReplyGroup;

/* 18. ��� */
drop table Reply purge;
drop sequence Reply_seq;
drop index PK_Reply;

/* 19. ���� */
drop table Authorize purge;
drop index PK_Authorize;

/* 20. ���̳� */
drop table ChatMessage purge;
drop sequence ChatMessage_seq;
drop index PK_ChatMessage;

/* 21. ä�÷� */
drop table ChatRoom purge;
drop sequence ChatRoom_seq;
drop index PK_ChatRoom;

/* 22. ä�÷��ο� */
drop table ChatRoomMember purge;
drop sequence ChatRoomMember_seq;
drop index PK_ChatRoomMember;

/* 23. �ñ��� */
drop table Sigungu purge;
drop index PK_Sigungu;

/* 24. �ݷ����� */
drop table Pet purge;
drop sequence Pet_seq;
drop index PK_Pet;

/* 25. ȸ������ �������� */
drop table DelMemInfoRet purge;
drop index PK_DelMemInfoRet;

/* 26. ���� */
drop table Lecturer purge;
drop sequence Lecturer_seq;
drop index PK_Lecturer;

/* 27. ���� ���� */
drop table ParentingService purge;
drop sequence ParentingService_seq;
drop index PK_ParentingService;

/* 28. Gallery */
drop table Gallery purge;
drop sequence Gallery_seq;
drop index PK_Gallery;

/* 29. ���θ��ּ� */
drop table RoadAddress purge;
drop sequence RoadAddress_seq;
drop index PK_RoadAddress;

/* 30. �ּ� */
drop table Address purge;
drop sequence Address_seq;
drop index PK_Address;