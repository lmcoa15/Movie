package movie.admin;

import java.sql.*;
import java.util.*;
public class film_reservationBean {

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
	
//	//회원 업데이트
//	public boolean updateDB(film_reservationBean _film_reservationBean){
//		connect();
//		String sql="update film set password=?,name_mem=?,age_mem=?";
//		try{
//			pstmt = conn.prepareStatement(sql);
//			//pstmt.setInt(1,_film.getId_film());
//			pstmt.setString(1,_membership.getPassword());
//			pstmt.setString(2,_membership.getName_mem());
//			pstmt.setInt(4,_membership.getAge_mem());
//			pstmt.executeUpdate();
//		}catch(SQLException e){
//			e.printStackTrace();
//			return false;
//		}
//		finally{
//			disconnect();
//		}
//		return true;
//	}
	
//	//예약 추가
//	public boolean insertDB(int user_id,int film_id){
//		connect();
//		String sql="insert into film_reservationBean(id_mem,id_film,film_name,watch_date,resv_date,seat_resv_no,resv_status) values(?,?,?,?,?,?,?)";
//		try{
//		//sql 문자열 ,gb_id는 자동등록되므로 입력하지 않는다.
//		//pstmt.setInt(1, _film.getId_film());
//		
//		pstmt=conn.prepareStatement(sql);
//		pstmt.setInt(1,user_id);
//		pstmt.setInt(2,film_id);
//		pstmt.setString(3,_film.getName_film());
//		pstmt.setString(4,"2015.11-2015.12");
//		pstmt.setString(5,_film.getWatch_date());
//		pstmt.setInt(6,seat_no);
//		pstmt.setString(7,"ok");
//		pstmt.executeUpdate();
//
//		}
//		catch(SQLException e){
//			e.printStackTrace();
//			return false;
//		}
//		finally{
//			disconnect();
//		}
//		return true;
//	}
	
	//영화 예약 확인
		public boolean confirmDB(int gb_id){
			connect();
			String sql="select film_name from membership where id_film=?";
			try{
			//sql 문자열 ,gb_id는 자동등록되므로 입력하지 않는다.
			//pstmt.setInt(1, _film.getId_film());
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
			ResultSet rs=pstmt.executeQuery();
			rs=pstmt.executeQuery();
			
				if(rs.next()){
					//기존에 영화 예약 생성
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
	
	public film_reservation getDB(int id_film){
		connect();
		
		String sql="select* from film_reservation where id_film=? ";
		film_reservation _film_reservation=new film_reservation();
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,id_film);
			ResultSet rs=pstmt.executeQuery();
			
			rs.next();
				
			_film_reservation.setId_film(rs.getInt("id_resv"));
			_film_reservation.setId_mem(rs.getInt("id_mem"));
			_film_reservation.setId_resv(rs.getInt("id_resv"));
			_film_reservation.setFilm_name(rs.getString("film_name"));
			_film_reservation.setWatch_date(rs.getString("watch_date"));
			_film_reservation.setResv_date(rs.getString("resv_date"));
			_film_reservation.setSeat_resv_no(rs.getInt("seat_resv_no"));
			_film_reservation.setResv_status(rs.getString("resv_status"));
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			disconnect();
		}
		return _film_reservation;
	}
	
	public ArrayList<film_reservation> getDBlist(){
		connect();
		ArrayList<film_reservation> datas=new ArrayList<film_reservation>();
		String sql="select* from film_reservation ";
		try{
			pstmt = conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				film_reservation _film_reservation=new film_reservation();
				_film_reservation.setId_film(rs.getInt("id_resv"));
				_film_reservation.setId_mem(rs.getInt("id_mem"));
				_film_reservation.setId_resv(rs.getInt("id_resv"));
				_film_reservation.setFilm_name(rs.getString("film_name"));
				_film_reservation.setWatch_date(rs.getString("watch_date"));
				_film_reservation.setResv_date(rs.getString("resv_date"));
				_film_reservation.setSeat_resv_no(rs.getInt("seat_resv_no"));
				_film_reservation.setResv_status(rs.getString("resv_status"));
				datas.add(_film_reservation);
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
