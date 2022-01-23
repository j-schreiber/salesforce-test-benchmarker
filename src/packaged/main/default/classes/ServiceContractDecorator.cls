public class ServiceContractDecorator {
    private ServiceContract record;
    private List<ContractSchedule__c> schedules;

    public ServiceContractDecorator(ServiceContract record) {
        this(record, new List<ContractSchedule__c>());
    }

    public ServiceContractDecorator(ServiceContract record, List<ContractSchedule__c> schedules) {
        this.record = record;
        this.schedules = schedules;
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

    public ContractScheduleResult makeSchedules() {
        ContractScheduleResult result = new ContractScheduleResult();
        result.obsoleteSchedules.addAll(this.schedules);
        for (Integer i = 0; i < this.record.Schedules__c; i++) {
            result.newSchedules.add(new ContractSchedule__c(ServiceContract__c = this.record.Id));
        }
        return result;
    }

    public void processAuditField() {
        DateTime startTime = System.now();
        DateTime endTime = startTime;
        while ((endTime.getTime() - startTime.getTime()) < 100) {
            System.debug((endTime.getTime() - startTime.getTime()));
            endTime = System.now();
        }
    }

    public class ContractScheduleResult {
        public List<ContractSchedule__c> obsoleteSchedules = new List<ContractSchedule__c>();
        public List<ContractSchedule__c> newSchedules = new List<ContractSchedule__c>();
    }
}
