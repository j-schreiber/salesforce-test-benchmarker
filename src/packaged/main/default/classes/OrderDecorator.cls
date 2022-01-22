public class OrderDecorator {
    private Order record;

    public OrderDecorator(Order record) {
        this.record = record;
    }

    public List<OrderItem> doSomething(Integer count) {
        List<OrderItem> ois = new List<OrderItem>();
        for (Integer i = 1; i <= count; i++) {
            Date serviceDate = System.today().addDays(i);
            ois.add(
                new OrderItem(
                    OrderId = this.record.Id,
                    Quantity = i,
                    UnitPrice = 100,
                    ServiceDate = serviceDate,
                    Description = String.format('Service Date: {0} - {1}', new List<Object>{ System.today(), serviceDate })
                )
            );
        }
        return ois;
    }
}
