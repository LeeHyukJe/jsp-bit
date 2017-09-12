package jspbook.addrbook;


import java.sql.*;
import java.util.*;

/**
 * file:AddrBean.java
 * desc:주소록 프로그램 DAO 클래스
 * @author 이혁제(lims2733@naver.com)
 */

public class AddrBean {
	Connection conn;
	PreparedStatement pstmt;
	
	String jdbc_driver="oracle.jdbc.driver.OracleDriver";
	String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn=DriverManager.getConnection(jdbc_url,"student","1234");
		}catch(Exception e) {}
	}
	
	void disconnect() {
		if(pstmt!=null) {
			try {
				pstmt.close();
			}catch(SQLException e) {
				System.out.println(e);
			}catch(Exception e) {
				System.out.println(e);
			}
		}
		
		if(conn!=null) {
			try {
				conn.close();
			}catch(SQLException e) {
				System.out.println(e);
			}catch(Exception e) {
				System.out.println(e);
			}
		}
	}
	
	public boolean updateDB(AddrBook addrbook) {
		connect();
		
		String sql="update addrbook set ab_name=?,ab_email=?, ab_birth=?,ab_tel=?,ab_comdept=?, ab_memo=? where ab_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, addrbook.getAb_name());
			pstmt.setString(2, addrbook.getAb_email());
			pstmt.setString(3, addrbook.getAb_birth());
			pstmt.setString(4, addrbook.getAb_tel());
			pstmt.setString(5, addrbook.getAb_comdept());
			pstmt.setString(6, addrbook.getAb_memo());
			pstmt.setInt(7, addrbook.getAb_id());
		}catch(SQLException e) {
			System.out.println(e);
			return false;
		}finally {
			disconnect();
		}
		return true;
	}
	
	public boolean deleteDB(int gb_id) {
		connect();
		
		String sql="delete from addrbook where ab_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, gb_id);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println(e);
			return false;
		}finally {
			disconnect();
		}
		return true;
	}
	
	public boolean insertDB(AddrBook addrbook) {
		connect();
		
		String sql="insert into addrbook(ab_name,ab_email,ab_birth,ab_tel,ab_comdept,ab_memo) values(?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, addrbook.getAb_name());
			pstmt.setString(2, addrbook.getAb_email());
			pstmt.setString(3, addrbook.getAb_birth());
			pstmt.setString(4, addrbook.getAb_tel());
			pstmt.setString(5, addrbook.getAb_comdept());
			pstmt.setString(6, addrbook.getAb_memo());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println(e);
			return false;
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			disconnect();
		}
		return true;
	}
	
	public AddrBook getDB(int gb_id) {
		connect();
		
		String sql="select *from addrbook where ad_id=?";
		AddrBook addrbook=new AddrBook();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, gb_id);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				addrbook.setAb_id(rs.getInt(1));
				addrbook.setAb_name(rs.getString(2));
				addrbook.setAb_email(rs.getString(3));
				addrbook.setAb_birth(rs.getString(4));
				addrbook.setAb_tel(rs.getString(5));
				addrbook.setAb_comdept(rs.getString(5));
				addrbook.setAb_memo(rs.getString(6));
			}
			rs.close();
		}catch(SQLException e) {
			System.out.println(e);
		}finally {
			disconnect();
		}
		return addrbook;
	}
	
	public ArrayList<AddrBook> getDBList(){
		connect();
		ArrayList<AddrBook>datas=new ArrayList<AddrBook>();
		String sql="select * from addrbook order by ad_id desc";
		try {
			pstmt=conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			AddrBook addrbook=new AddrBook();
			while(rs.next()) {
				addrbook.setAb_id(rs.getInt(1));
				addrbook.setAb_name(rs.getString(2));
				addrbook.setAb_email(rs.getString(3));
				addrbook.setAb_birth(rs.getString(4));
				addrbook.setAb_tel(rs.getString(5));
				addrbook.setAb_comdept(rs.getString(5));
				addrbook.setAb_memo(rs.getString(6));
				datas.add(addrbook);
			}
			rs.close();
		}catch(SQLException e) {
			System.out.println(e);
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			disconnect();
		}
		return datas;
	}
}
