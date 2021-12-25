trigger onOrderDoUselessStuff on Order(before insert, before update) {
    Set<Id> accountIds = new Set<Id>();
    for (Order o : Trigger.new)
        accountIds.add(o.AccountId);
    Map<Id, Account> orderAccs = new Map<Id, Account>([SELECT Id, PicklistField__c FROM Account WHERE Id IN :accountIds]);

    for (Order o : Trigger.new) {
        if (o.AccountId != null && orderAccs.containsKey(o.AccountId)) {
            o.PicklistField__c = orderAccs.get(o.AccountId).PicklistField__c;
        }
    }

}
