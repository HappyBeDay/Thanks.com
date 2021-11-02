package sist.com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.Getter;

@Getter
@Repository
public class DaoMw {

	// 필드.
	private AbAnimalDao abAnimalDao;
	private SidoDao sidoDao;
	private BreedDao breedDao;
	private MemberInfoDao memberDao;
	private AbShelterDao abShelterDao;

	// 생성자.
	@Autowired
	public DaoMw(AbAnimalDao abAnimalDao, SidoDao sidoDao, BreedDao breedDao, MemberInfoDao memberDao, AbShelterDao abShelterDao) {
		this.abAnimalDao = abAnimalDao;
		this.sidoDao = sidoDao;
		this.breedDao = breedDao;
		this.memberDao = memberDao;
		this.abShelterDao = abShelterDao;
	}
}