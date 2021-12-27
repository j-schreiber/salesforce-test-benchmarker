trigger onServiceContract on ServiceContract(before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        for (ServiceContract sc : Trigger.new) {
            if (sc.Schedules__c == null) {
                sc.Schedules__c = 0;
            }
        }
    } else {
        List<ContractSchedule__c> existingSchedules = [SELECT Id FROM ContractSchedule__c WHERE ServiceContract__c IN :Trigger.new];
        List<ContractSchedule__c> newSchedules = new List<ContractSchedule__c>();
        for (ServiceContract sc : Trigger.new) {
            for (Integer i = 0; i < sc.Schedules__c; i++) {
                newSchedules.add(new ContractSchedule__c(ServiceContract__c = sc.Id));
            }
        }
        delete existingSchedules;
        insert newSchedules;
    }
}
