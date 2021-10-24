package sist.com.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class BreedVO {
	private int breedCode ;
	private String breedName ;
	private int animalTypeCode ;
}

/*
    CREATE TABLE "BREED"
  	"BREEDCODE" NUMBER(7,0) NOT NULL ENABLE, 
	"BREEDNAME" NVARCHAR2(20) NOT NULL ENABLE, 
	"ANIMALTYPECODE" NUMBER(7,0) NOT NULL ENABLE, 
 */

/*
    CREATE TABLE "ANIMALTYPE" 
   	"ANIMALTYPECODE" NUMBER(7,0) NOT NULL ENABLE, 
	"ANIMALTYPENAME" NVARCHAR2(20) NOT NULL ENABLE/
 */