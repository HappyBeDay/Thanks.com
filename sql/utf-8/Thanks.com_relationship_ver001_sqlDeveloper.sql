ALTER TABLE AbandonedAnimal
   ADD
      CONSTRAINT FK_품종_TO_AbandonedAnimal
      FOREIGN KEY (
         BreedCode
      )
      REFERENCES 품종 (
         품종코드
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

ALTER TABLE 실종 
   ADD
      CONSTRAINT FK_AbandonedAnimal_TO_실종 
      FOREIGN KEY (
         abAnimalCode
      )
      REFERENCES AbandonedAnimal (
         abAnimalCode
      );

ALTER TABLE 실종 
   ADD
      CONSTRAINT FK_Sigungu_TO_실종 
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
