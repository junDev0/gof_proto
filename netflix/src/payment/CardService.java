package payment;

import member.MemberBean;

/**
 * @date   :2016. 7. 7.
 * @author :HyunWoo Lee
 * @file   :CardPageService.java
 * @story  :
*/

public interface CardService {
	public CardBean findByPk(String cardNum);
	public CardBean getCard(String email);
	public boolean checkCard(CardBean cardBean);
	public void update(MemberBean memBean);
}
