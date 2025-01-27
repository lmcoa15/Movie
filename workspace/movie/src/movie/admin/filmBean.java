package movie.admin;

import java.sql.*;
import java.util.*;

public class filmBean {
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
	
	//영화 업데이트
	public boolean updateDB(film _film){
		connect();
		String sql="update film set id_film=?,name_film=?,age_phase=?,seat_num=?,"
				+ "watch_date=?";
		
		try{
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1,_film.getId_film());
			pstmt.setString(2,_film.getName_film());
			pstmt.setInt(3,_film.getAge_phase());
			pstmt.setInt(4,_film.getAge_phase());
			pstmt.setString(5,_film.getWatch_date());
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
	
	//영화삭제
	public boolean deleteDB(int gb_id){
		connect();
		String sql="delete from film where id_film=?";
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

	//영화 추가
	public boolean insertDB(film _film){
		connect();
		String sql="insert into film(name_film,age_phase,seat_num,watch_date) values(?,?,?,?)";
		try{
		//sql 문자열 ,gb_id는 자동등록되므로 입력하지 않는다.
		//pstmt.setInt(1, _film.getId_film());
		
		pstmt=conn.prepareStatement(sql);
		//pstmt.setInt(1,123);
		pstmt.setString(1,_film.getName_film());
		pstmt.setInt(2,_film.getAge_phase());
		pstmt.setInt(3,_film.getSeat_num());
		pstmt.setString(4,_film.getWatch_date());
		pstmt.executeUpdate();
		
		
		//sql="insert into seat_no(id_film,seat1,seat2,seat3,seat4,seat5,seat6,seat7,seat8,seat9) values(?,?,?,?,?,?,?,?,?,?)";
		
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
	
	public film getDB(int film_id){
		connect();
		
		String sql="select* from film where id_film=? ";
		film _film=new film();
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, film_id);
			ResultSet rs=pstmt.executeQuery();
			
			rs.next();
				
			_film.setId_film(rs.getInt("id_film"));
			_film.setName_film(rs.getString("name_film"));
			_film.setAge_phase(rs.getInt("age_phase"));
			_film.setSeat_num(rs.getInt("seat_num"));
			_film.setWatch_date(rs.getString("watch_date"));
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			disconnect();
		}
		return _film;
	}
	
	public ArrayList<film> getDBlist(){
		connect();
		ArrayList<film> datas=new ArrayList<film>();
		String sql="select* from film ";
		try{
			pstmt = conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				film _film=new film();
				_film.setId_film(rs.getInt("id_film"));
				_film.setName_film(rs.getString("name_film"));
				_film.setAge_phase(rs.getInt("age_phase"));
				_film.setSeat_num(rs.getInt("seat_num"));
				_film.setWatch_date(rs.getString("watch_date"));
				datas.add(_film);
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
