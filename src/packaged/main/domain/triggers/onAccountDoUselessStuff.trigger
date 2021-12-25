trigger onAccountDoUselessStuff on Account(after update) {
    List<Order> ordersToUpdate = new List<Order>();
    Set<Id> validAccountIds = new Set<Id>();

    for (Account a : [SELECT Id, (SELECT Id, ExternalId__c FROM Orders) FROM Account WHERE Id IN :Trigger.new]) {
        validAccountIds.add(a.Id);
        for (Order o : a.Orders) {
            if (o.ExternalId__c != null && Trigger.newMap.get(a.Id).PicklistField__c != Trigger.oldMap.get(a.Id).PicklistField__c) {
                Account accToBlock = Trigger.newMap.get(a.Id);
                accToBlock.PicklistField__c.addError('Some error');
                validAccountIds.remove(a.Id);
                break;
            }
        }
    }

    for (Account a : [SELECT Id, (SELECT Id, ExternalId__c, Account.AccountNumber FROM Orders) FROM Account WHERE Id IN :Trigger.new]) {
        if (!validAccountIds.contains(a.Id))
            continue;
        for (Order o : a.Orders) {
            o.PicklistField__c = (String) Trigger.newMap.get(a.Id).PicklistField__c;
            ordersToUpdate.add(o);
        }
    }

    update ordersToUpdate;

}
