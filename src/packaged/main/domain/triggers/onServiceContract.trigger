trigger onServiceContract on ServiceContract(before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        ServiceContractDomain.cleanFields(Trigger.new);
    } else {
        ServiceContractDomain.alignSchedules(Trigger.newMap.keySet());
    }
}
