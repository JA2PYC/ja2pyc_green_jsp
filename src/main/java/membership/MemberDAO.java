package membership;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{
	public MemberDAO (String driver, String url, String id, String pw) {
		super (driver, url, id, pw);
		System.out.println("MemberDAO");
	}
	
	public MemberDTO getMemberDTO (String uid, String uPw) {
		System.out.println("getMemberDTO");
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM member WHERE id=? AND pass=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, uPw);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
}
