package org.kh.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession session, Member m) {
		// selectOne은 기본적으로 객체 하나를 반환해주는 함수임
		Member member = session.selectOne("mybatis.loginMember", m);
		return member;
	}

	public ArrayList<Member> selectAllMember(SqlSession session) {
		List<Member> list = session.selectList("mybatis.selectAllMember");
		// ArrayList가 List의 자식이기 때문에 가능한 일.
		return (ArrayList<Member>)list;
	}

	public int insertMember(SqlSession session, Member m) {
		// 인자 : "구분자", 객체 
		int result = session.insert("mybatis.insertMember", m);
		return result;
	}

	public int deleteMember(SqlSession session, String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
