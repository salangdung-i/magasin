package kr.magasin.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.magasin.common.JDBCTemplate;
import kr.magasin.member.model.dao.MemberDao;
import kr.magasin.member.model.vo.Member;

public class MemberService {
	public Member login(String id, String pw) {
		Connection conn = JDBCTemplate.getConnection();
		MemberDao dao = new MemberDao();
		Member m = dao.login(conn,id,pw);
		JDBCTemplate.close(conn);
		return m;
	}
	public Member selectOne(String id) {
		Connection conn = JDBCTemplate.getConnection();
		MemberDao dao = new MemberDao();
		Member m = dao.selectOne(conn,id);
		JDBCTemplate.close(conn);
		return m;
	}
	
	//보류
	public int updateMember(Member member) {
		Connection conn = JDBCTemplate.getConnection();
		MemberDao dao = new MemberDao();
		int result = dao.updateMember(member);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else{
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	public int insertMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		MemberDao dao = new MemberDao();
		int result = dao.insertMember(conn,m);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else{
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	//보류
	public ArrayList<Member> selectList() {
		Connection conn = JDBCTemplate.getConnection();
		MemberDao dao = new MemberDao();
		ArrayList<Member> list = dao.selectList();
		for(Member index : list) {
			System.out.println(index.getName());
		}
		JDBCTemplate.close(conn);
		return list;
	}
	
	//보류
	public int deleteMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		MemberDao dao = new MemberDao();
		int result = dao.deleteMember(conn, m);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else{
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	//보류
	public ArrayList<Member> searchKeyword(String type, String keyword) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Member> list = null;
		MemberDao dao = new MemberDao();
		switch(type) { //값에 따라 다른 dao호출
		case "id": list = dao.searchKeywordId(conn,keyword); break;
		case "name": list = dao.searchKeywordName(conn,keyword); break;
			}
		JDBCTemplate.close(conn);
		return list;
	}

}
