package sist.com.api.apiEnum;

/*
417000	개
422400	고양이
429900	기타
 * 
 */
public enum BreedType {
	개(417000), 고양이(422400), 기타(429900);

	public int code;

	private BreedType(int code) {
		this.code = code;
	}
}
