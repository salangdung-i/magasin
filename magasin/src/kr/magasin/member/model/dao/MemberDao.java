﻿package kr.magasin.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
			if (rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("addr"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	 //아이디 중복확인
	public Member selectOne(Connection conn, String id) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println(id);
		String query = "select * from member where id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("addr"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	
	//이메일 중복 확인
	public Member selectOne2(Connection conn, String email) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println(email);
		String query = "select * from member where email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("addr"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}

	//이름,이메일로 아이디 찾기
	public Member searchId(Connection conn, String name, String email) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where name=? and email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("addr"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}

	//이름,휴대전화로 아이디찾기
	public Member searchId2(Connection conn, String name, String phone) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where name=? and phone=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				m = new Member();
				m.setId(rset.getString("id"));
				m.setPw(rset.getString("pw"));
				m.setName(rset.getString("name"));
				m.setAddr(rset.getString("addr"));
				m.setPhone(rset.getString("phone"));
				m.setBirthdate(rset.getInt("birthdate"));
				m.setGender(rset.getString("gender"));
				m.setGrade(rset.getString("grade"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}

	   //비밀번호 이메일로 전송해주기!!!!!!(일단보류)
	   //이름,아이디,이메일로 인증번호(또는 비번) 받기
	   public Member searchPw(Connection conn, String name, String id, String email) {
	      Member m = null;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      String query = "select * from member where name=? and id=? and email=?";
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, name);
	         pstmt.setString(2, id);
	         pstmt.setString(3, email);
	         rset = pstmt.executeQuery();
	         if (rset.next()) {
	            m = new Member();
	            m.setId(rset.getString("id"));
	            m.setPw(rset.getString("pw"));
	            m.setName(rset.getString("name"));
	            m.setAddr(rset.getString("addr"));
	            m.setPhone(rset.getString("phone"));
	            m.setBirthdate(rset.getInt("birthdate"));
	            m.setGender(rset.getString("gender"));
	            m.setGrade(rset.getString("grade"));
	            m.setEmail(rset.getString("email"));
	            m.setEnrollDate(rset.getDate("enroll_date"));
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      return m;
	   }
	   
	   //이름,아이디,전화번호로 인증번호(또는 비번) 받기
	   public Member searchPw2(Connection conn, String name, String id, String phone) {
	      Member m = null;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      String query = "select * from member where name=? and id=? and phone=?";
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, name);
	         pstmt.setString(2, id);
	         pstmt.setString(3, phone);
	         rset = pstmt.executeQuery();
	         if (rset.next()) {
	            m = new Member();
	            m.setId(rset.getString("id"));
	            m.setPw(rset.getString("pw"));
	            m.setName(rset.getString("name"));
	            m.setAddr(rset.getString("addr"));
	            m.setPhone(rset.getString("phone"));
	            m.setBirthdate(rset.getInt("birthdate"));
	            m.setGender(rset.getString("gender"));
	            m.setGrade(rset.getString("grade"));
	            m.setEmail(rset.getString("email"));
	            m.setEnrollDate(rset.getDate("enroll_date"));
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      return m;
	   }	
	
	public int insertMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into member values(?,?,?,?,?,?,?,default,?,sysdate)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPw());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getAddr());
			pstmt.setString(5, m.getPhone());
			pstmt.setInt(6, m.getBirthdate());
			pstmt.setString(7, m.getGender());
			pstmt.setString(8, m.getEmail());
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
	

	public int updateMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
	
		String query = "update MEMBER SET pw=?,addr=?,phone=?,email=? where id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getPw());
			pstmt.setString(2, m.getAddr());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getId());
			result = pstmt.executeUpdate();
			
			if(result > 0) {
				conn.commit();
			}else {
				conn.rollback();
				
			}		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
			
		}
		return result;	
	}
	
	public int delete(Connection conn, String memberId) {
	      int result = 0;
	      PreparedStatement  pstmt =null;
	      String query = "DELETE FROM MEMBER WHERE ID =?";
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, memberId);
	         result = pstmt.executeUpdate();

	         if (result > 0) {
	            conn.commit();
	         } else {
	            conn.rollback();
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         JDBCTemplate.close(pstmt);
	      }
	      return result;
	   }
	   
	



}
