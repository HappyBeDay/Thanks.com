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
drop sequence Seminar_seq;
drop index PK_Shelter;

/* 7. 축종그룹 */
drop table AnimalGroup purge;
drop sequence Seminar_seq;
drop index PK_AnimalGroup;

/* 8. 축종 */
drop table AnimalType purge;
drop index PK_AnimalType;

/* 9. 품종 */
drop table BreedCode purge;
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