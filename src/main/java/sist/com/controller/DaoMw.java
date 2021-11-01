package sist.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.Getter;
import sist.com.dao.AbAnimalDao;
import sist.com.dao.BreedDao;
import sist.com.dao.SidoDao;

@Getter
@Repository
public class DaoMw {

	// 필드.
	private AbAnimalDao abAnimalDao;
	private SidoDao sidoDao;
	private BreedDao breedDao;

	// 생성자.
	@Autowired
	public DaoMw(AbAnimalDao abAnimalDao, SidoDao sidoDao, BreedDao breedDao) {
		this.abAnimalDao = abAnimalDao;
		this.sidoDao = sidoDao;
		this.breedDao = breedDao;
	}
}