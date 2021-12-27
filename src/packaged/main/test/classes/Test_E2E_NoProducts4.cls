@isTest
public class Test_E2E_NoProducts4 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullOrderStructure(null, 100);
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_0() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_1() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_2() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_3() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_4() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_5() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_6() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_7() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_8() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithSoqlInALoop_9() {
        // ACT
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }
}
