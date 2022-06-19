package member;


import java.sql.SQLException;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import DB.DBConnPool;

public class MemberDAO extends DBConnPool {
	
	public MemberDAO () {
		super();
	}
	
	
	// 회원가입
	public void insertMember(MemberDTO dto) {
		
		String sql = "insert into appleMember " +
					 " values( ? , ? , ? , to_date(?, 'yyyy-mm-dd') ,? , ? , ? ) ";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getBirth());
		    psmt.setString(5, dto.getPhone());
		    psmt.setString(6, dto.getEmail());
		    psmt.setString(7, dto.getAddress());
		    psmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	

	
	
	
	// 로그인 
	
	public MemberDTO login (MemberDTO d ) {
		MemberDTO dto = null ;
		String sql = "select * from appleMember where id = ? and pass = ?";
		try {
			psmt =con.prepareStatement(sql);
			psmt.setString(1, d.getId());
			psmt.setString(2, d.getPass());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setBirth(rs.getString("birth"));
				dto.setPhone(rs.getString("phone"));
				dto.setEmail(rs.getString("email"));
				dto.setAddress(rs.getString("address"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto ;
		
	}
	
	
	
	public MemberDTO findPW(MemberDTO dto) {
		
		MemberDTO member = new MemberDTO();
		
		String sql = "select pass from applemember where id = ?";
		
		try {
			psmt=con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				member.setPass(rs.getString("pass"));
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return member;
	}
	
	
	public void update(MemberDTO dto) {
		
		String sql = "update applemember set name = ? , birth = to_date(?, 'yyyy-mm-dd') ,"
					+ " phone = ? , email = ? , address = ?  where id = ?";
		
		try {
			
			psmt=con.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getBirth());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getAddress());
			psmt.setString(6, dto.getId());
			psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	
	
	
	

}
