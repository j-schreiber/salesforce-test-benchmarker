public class ServiceContractFactory {
    public static List<ServiceContractDecorator> make(List<Id> recordIds) {
        Map<Id, ServiceContract> scs = new Map<Id, ServiceContract>(
            [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract WHERE Id IN :recordIds]
        );
        List<ServiceContractDecorator> decs = new List<ServiceContractDecorator>();
        for (Id contractId : recordIds) {
            decs.add(new ServiceContractDecorator(scs.get(contractId), scs.get(contractId).ContractSchedules__r));
        }
        return decs;
    }
}
