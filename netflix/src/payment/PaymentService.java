package payment;

import global.CommonService;

/**
 * @date   :2016. 7. 27.
 * @author :HyunWoo Lee
 * @file   :PaymentService.java
 * @story  :
*/

public interface PaymentService extends CommonService{
	public PaymentBean findByPk(int paySeq);
	public int insert(PaymentBean payBean);
	public int updaet(PaymentBean payBean);
	public int delete(int paySeq);
}
