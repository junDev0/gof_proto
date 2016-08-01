package member;

/**
 * @date   :2016. 7. 27.
 * @author :HyunWoo Lee
 * @file   :MemberService.java
 * @story  :
*/

public interface MemberService {
	public MemberBean findByPk(String id);
	public int regist(MemberBean memBean);
	public int update(MemberBean memBean);
	public int delete(MemberBean memBean);
	public int addFavorite(String email,int serialNo);
	public int delFavorite(String email,int serialNo);
	
}
