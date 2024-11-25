package model2.mvcboard;

import java.util.List;
import java.util.Map;
import java.util.Vector;
import common.DBConnPool;

public class MVCBoardDAO extends DBConnPool {
	public MVCBoardDAO() {
		super();
	}

	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;

		String query = "SELECT COUNT(*) FROM mvcboard";
		if (map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " LIKE '%" + map.get("searchWord") + "%'";
		}

		System.out.println("Query : " + query);
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("Exception : selectCount");
			e.printStackTrace();
		}
		System.out.println("selectCount totalCount : " + totalCount);
		return totalCount;
	}

	public List<MVCBoardDTO> selectListPage(Map<String, Object> map) {
		List<MVCBoardDTO> board = new Vector<>();

		String query = "SELECT * FROM (SELECT @ROWNUM :=@ROWNUM+1 rownum, mvcb.* FROM mvcboard mvcb, (SELECT @ROWNUM:=0) rowT";
		if (map.get("searchField") != null && map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " LIKE '%" + map.get("searchWord") + "%'";
		}
		query += " ORDER BY idx ASC) mvcboardT WHERE mvcboardT.rownum BETWEEN ? AND ? ORDER BY mvcboardT.rownum DESC";
		System.out.println("Query : " + query);
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs = psmt.executeQuery();

			while (rs.next()) {
				MVCBoardDTO dto = new MVCBoardDTO();
				dto.setIdx(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setTitle(rs.getString(4));
				dto.setContent(rs.getString(5));
				dto.setPostdate(rs.getDate(6));
				dto.setOfile(rs.getString(7));
				dto.setSfile(rs.getString(8));
				dto.setDowncount(rs.getInt(9));
				dto.setPass(rs.getString(10));
				dto.setVisitcount(rs.getInt(11));

				board.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception : selectListPage");
			e.printStackTrace();
		}

		return board;
	}

	public int insertWrite(MVCBoardDTO dto) {
		int result = 0;

		try {
			String query = "INSERT INTO mvcboard (name, title, content, ofile, sfile, pass) VALUES (?, ?, ?, ?, ?, ?)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getSfile());
			psmt.setString(6, dto.getPass());
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("Exception : insertWrite");
			e.printStackTrace();
		}
		return result;
	}
	
	public MVCBoardDTO selectView (String idx) {
		MVCBoardDTO dto = new MVCBoardDTO();
		String query = "SELECT * FROM mvcboard WHERE idx=?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			rs = psmt.executeQuery();
			if (rs.next() ) {
				dto.setIdx(rs.getString("idx"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setOfile(rs.getString("ofile"));
				dto.setSfile(rs.getString("sfile"));
				dto.setDowncount(rs.getInt("downcount"));
				dto.setPass(rs.getString("pass"));
				dto.setVisitcount(rs.getInt("visitcount"));
			}
		} catch (Exception e ) {
			System.out.println("Exception : selectView");
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public void updateVisitCount(String idx) {
		String query = "UPDATE mvcboard SET visitcount=visitcount+1 WHERE idx=?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			psmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Exception : updateVisitCount");
			e.printStackTrace();
		}
	}
	
	public void updateDownCount(String idx) {
		String query = "UPDATE mvcboard SET downcount=downcount+1 WHERE idx=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("Exception : updateDownCount");
			e.printStackTrace();
		}
				
	}
}
