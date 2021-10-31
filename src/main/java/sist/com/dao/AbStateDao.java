package sist.com.dao;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.vo.AbStateVO;

@Repository
public class AbStateDao implements ApiDao {

	private SqlSessionTemplate sqlSession;

	// constructor
	@Autowired
	public AbStateDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSession = sqlSessionTemplate;
		System.out.println("construct Dao() : AbStateDao");
	}

	// method
	@Override
	public Set<Integer> selectPKColumnReturnSet() {
		return new HashSet<Integer>(sqlSession.selectList("selectAbState_PK"));
	}

	@Override // return key
	public int insertApiData(List<Map<String, String>> list) {
		return -1;
	}

	// 이름값에 중복이 있는지 확인해서 있으면 insert하고 map에 추가 그러고 key값 return.
	public int insertApiDate(String name) {
		System.out.println("---insertApiDate---");
		Object one = sqlSession.selectOne("selectAbState_Code_Name", name);

		System.out.println("one : ---");
		System.out.println(one);
		if (one!=null)
			return (int) one;

		int code = getSequence();
		insertFromVO(new AbStateVO(code, name));

		return code;
	}

	public Map<String, Integer> selectCodeName() {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		List<AbStateVO> list = selectAllData();
		for (AbStateVO state : list) {
			map.put(state.getStateName(), state.getStateCode());
		}
		return map;
	}

	public List<AbStateVO> selectAllData() {
		return sqlSession.selectList("selectAbState_All");
	}

	private int getSequence() {
		return sqlSession.selectOne("getAbStateSequence");
	}

	public void insertFromVO(AbStateVO vo) {
		sqlSession.insert("insertAbStateFromVO", vo);
	}

}