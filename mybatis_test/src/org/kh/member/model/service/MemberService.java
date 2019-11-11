package org.kh.member.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.kh.member.model.dao.MemberDao;
import org.kh.member.model.vo.Member;

import common.SqlSessionTemplate;

public class MemberService {

	public Member loginMember(Member m) {
		// Connection 대신.
		SqlSession session = SqlSessionTemplate.getSqlSession();
		MemberDao dao = new MemberDao();
		Member member = dao.loginMember(session, m);
		session.close();
		return member;
	}

	public ArrayList<Member> selectAllMember() {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		MemberDao dao = new MemberDao();
		ArrayList<Member> list = dao.selectAllMember(session);
		session.close();
		return list;
	}

	public int insertMember(Member m) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		MemberDao dao = new MemberDao();
		
		int result = dao.insertMember(session, m);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int deleteMember(String memberId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		MemberDao dao = new MemberDao();
		
		int result = dao.deleteMember(session, memberId);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

}
