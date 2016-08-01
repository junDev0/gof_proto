package video;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import global.Constants;
import global.DBFactory;
import global.Vendor;

public class VideoDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private static VideoDAO instance = new VideoDAO();
	
	private VideoDAO() {
		conn = DBFactory.createDatabase(Vendor.ORACLE, Constants.USER_ID, Constants.USER_PW).getConnection();
	}

	public static VideoDAO getInstance() {
		return instance;
	}

	public int insert(VideoBean viBean) {
		int result = 0;
		
		try {
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	
}
