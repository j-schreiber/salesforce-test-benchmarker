public class ServiceContractDecorator {
    private ServiceContract record;

    public ServiceContractDecorator(ServiceContract record) {
        this.record = record;
    }

    public List<ContractLineItem> doSomething(Integer count) {
        List<ContractLineItem> ois = new List<ContractLineItem>();
        for (Integer i = 1; i <= count; i++) {
            Date endDate = System.today().addDays(i);
            ois.add(
                new ContractLineItem(
                    ServiceContractId = this.record.Id,
                    Quantity = i,
                    UnitPrice = 100,
                    StartDate = System.today(),
                    EndDate = endDate,
                    Description = String.format('Service Date: {0} - {1}', new List<Object>{ System.today(), endDate })
                )
            );
        }
        return ois;
    }
}
