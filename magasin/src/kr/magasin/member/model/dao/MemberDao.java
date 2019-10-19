package kr.magasin.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import kr.magasin.common.JDBCTemplate;
import kr.magasin.member.model.vo.Member;

public class MemberDao {
	public Member login(Connection conn, String id, String pw) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where id=? and pw=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("phone"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	public Member selectOne(Connection conn, String id) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("phone"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	
	//보류
	public int updateMember(Member member) {
		Connection conn = JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "update member set member_pw=?,member_name=?,age=?,email=?,phone=? where member_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setInt(3, member.getAge());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getMemberId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}
		//System.out.println(member.getMemberId());
		return result;
	}
	
	public int insertMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into member values(?,?,?,?,?,?,?,?,?,sysdate)";
		try {
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, m.getId());
		pstmt.setString(2, m.getPw());
		pstmt.setString(3, m.getName());
		pstmt.setString(4, m.getAddr());
		pstmt.setString(5, m.getPhone());
		pstmt.setInt(6, m.getBirthdate());
		pstmt.setString(7, m.getGender());
		pstmt.setString(8, m.getGrade());
		pstmt.setString(9, m.getEmail());
		result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}
		System.out.println(m.getId());
		return result;
	}
	
	//보류
	public ArrayList<Member> selectList() {
		ArrayList<Member> list = new ArrayList<Member>();
		Member m = null;
		Connection conn = JDBCTemplate.getConnection();
		Statement stmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MEMBER";
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			while (rset.next()) {
				m = new Member();
				m.setAge(rset.getInt("AGE"));
				m.setEmail(rset.getString("EMAIL"));
				m.setEnrollDate(rset.getDate("ENROLL_DATE"));
				m.setMemberId(rset.getString("MEMBER_ID"));
				m.setMemberName(rset.getString("MEMBER_NAME"));
				m.setMemberPw(rset.getString("MEMBER_PW"));
				m.setPhone(rset.getString("PHONE"));
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
			JDBCTemplate.close(conn);
		}
		return list;
	}
	
	//보류
	public int deleteMember(String memberId) {
		Connection conn = JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "delete from member where member_id=?";
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}
		return result; //삭제되었나 안되었나
	}
	
	//보류
	public int deleteMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "delete from member where member_id=?";
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, m.getMemberId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}
		return result; //삭제되었나 안되었나
	}
	
	//보류
	//관리자가 회원아이디 검색할 때
	public ArrayList<Member> searchKeywordId(Connection conn, String keyword){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where member_id like (?)";
		ArrayList<Member> list = new ArrayList<Member>();
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%"+keyword+"%");
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Member m = new Member();
				m.setAge(rset.getInt("AGE"));
				m.setEmail(rset.getString("EMAIL"));
				m.setMemberId(rset.getString("MEMBER_ID"));
				m.setMemberName(rset.getString("MEMBER_NAME"));
				m.setPhone(rset.getString("PHONE"));
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(conn);
		}
		return list;
	}
	
	//보류
	public ArrayList<Member> searchKeywordName(Connection conn, String keyword){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where member_name like (?)";
		ArrayList<Member> list = new ArrayList<Member>();
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%"+keyword+"%");
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Member m = new Member();
				m.setAge(rset.getInt("AGE"));
				m.setEmail(rset.getString("EMAIL"));
				m.setMemberId(rset.getString("MEMBER_ID"));
				m.setMemberName(rset.getString("MEMBER_NAME"));
				m.setMemberPw(rset.getString("MEMBER_PW"));
				m.setPhone(rset.getString("PHONE"));
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(conn);
		}
		return list;
	}
	
}
