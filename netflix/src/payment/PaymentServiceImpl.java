package payment;

import java.util.List;
import java.util.Map;

public class PaymentServiceImpl implements PaymentService{
	private PaymentDAO dao = PaymentDAO.getInstance();
	
	private static PaymentServiceImpl instance = new PaymentServiceImpl();
	
	private PaymentServiceImpl() {
	}
	public static PaymentServiceImpl getInstance() {
		return instance;
	}
	@Override
	public List<PaymentBean> list() {
		 return dao.selectAll();
	}
	@Override
	public List<PaymentBean> findBy(String keyword) {
		String[] format = keyword.split(":");
		return dao.selectBy(format[0],format[1]);
	}
	@Override
	public Map<Integer, PaymentBean> map() {
		return null;
	}
	@Override
	public PaymentBean findByPk(int paySeq) {
		return dao.selectByPk(paySeq);
	}
	
	@Override
	public boolean insert(MemberPaymentCard pcmBean) {
		boolean result = false;
		if(dao.insert(pcmBean)==1){
		/*	if(dao.update(pcmBean)==1){
				result = true;				
			}*/
		}
		return result;
	}
	@Override
	public int update(PaymentBean payBean) {
		return dao.update(payBean);
	}
	@Override
	public int delete(int paySeq) {
		return dao.delete(paySeq);
	}
	@Override
	public boolean checkCard(CardBean cardBean) {
		
		// email 보내는 service 만들꺼임!
	
	return true;
	}
}
