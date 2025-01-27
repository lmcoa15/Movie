package movie.admin;

import java.sql.*;
import java.util.*;
public class MembershipBean {

	Connection conn=null;
	PreparedStatement pstmt = null;

	String jdbc_driver="com.mysql.jdbc.Driver";
	String jdbc_url="jdbc:mysql://localhost/film_booking ";
	
	//데이터베이스 연결 메서드
	void connect(){
		try{
			//jdbc 드라이버 로드
			Class.forName(jdbc_driver);
			
			//데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
			conn = DriverManager.getConnection(jdbc_url,"root", "wjqthr12");

		}catch(Exception e){
			e.printStackTrace();
		}
	}
	void disconnect(){
		if(pstmt!=null){
			try{
				pstmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	//회원 업데이트
	public boolean updateDB(membership _membership){
		connect();
		String sql="update membership set password=?,age_mem=?";
		try{
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1,_film.getId_film());
			pstmt.setString(1,_membership.getPassword());
			pstmt.setInt(2,_membership.getAge_mem());
			pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}
		finally{
			disconnect();
		}
		return true;
	}
	
	//회원삭제
	public boolean deleteDB(int gb_id){
		connect();
		String sql="delete from membership where id_mem=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
			pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}
		finally{
			disconnect();
		}
		return true;
	}

	//회원 추가
	public boolean insertDB(membership _membership){
		connect();
		String sql="insert into membership(password,name_mem,age_mem,rdate) values(?,?,?,?)";
		try{
		//sql 문자열 ,gb_id는 자동등록되므로 입력하지 않는다.
		//pstmt.setInt(1, _film.getId_film());
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,_membership.getPassword());
		pstmt.setString(2,_membership.getName_mem());
		pstmt.setInt(3,_membership.getAge_mem());
		pstmt.setString(4,_membership.getRdate());
		pstmt.executeUpdate();

		}
		catch(SQLException e){
			e.printStackTrace();
			return false;
		}
		finally{
			disconnect();
		}
		return true;
	}
	
	//회원 확인
		public boolean confirmDB(String gb_name){
			connect();
			String sql="select name_mem from membership where name_mem=?";
			try{
			//sql 문자열 ,gb_id는 자동등록되므로 입력하지 않는다.
			//pstmt.setInt(1, _film.getId_film());
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,gb_name);
			ResultSet rs=pstmt.executeQuery();
			rs=pstmt.executeQuery();
			
				if(rs.next()){
					//중복되는 아이디 존재
					return false;
				}

			}
			catch(SQLException e){
				e.printStackTrace();
				return false;
			}
			finally{
				disconnect();
			}
			return true;
		}
	
	public membership getDB(String membership_name){
		connect();
		
		String sql="select* from membership where name_mem=? ";
		membership _membership=new membership();
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,membership_name);
			ResultSet rs=pstmt.executeQuery();
			
			rs.next();
			_membership.setId_mem(rs.getInt("id_mem"));
			_membership.setName_mem(rs.getString("name_mem"));
			_membership.setPassword(rs.getString("password"));
			_membership.setAge_mem(rs.getInt("age_mem"));
			_membership.setRdate(rs.getString("rdate"));

			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			disconnect();
		}
		return _membership;
	}
	
	public ArrayList<membership> getDBlist(){
		connect();
		ArrayList<membership> datas=new ArrayList<membership>();
		String sql="select* from membership ";
		try{
			pstmt = conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				membership _membership=new membership();
				_membership.setId_mem(rs.getInt("id_mem"));
				_membership.setName_mem(rs.getString("name_mem"));
				_membership.setPassword(rs.getString("password"));
				_membership.setAge_mem(rs.getInt("age_mem"));
				_membership.setRdate(rs.getString("rdate"));
				datas.add(_membership);
			}
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			disconnect();
		}
		return datas;
	}
}
