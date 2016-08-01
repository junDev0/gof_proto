package payment;

public class EmailTest {
	public static void main(String[] args) {
		PaymentService service = PaymentServiceImpl.getInstance();
		CardBean card = new CardBean();
		card.setCardNum("9999-9999-9999-9999");
		card.setName("이현우");
		boolean a = service.checkCard(card);
		System.out.println(a);
	}
}
