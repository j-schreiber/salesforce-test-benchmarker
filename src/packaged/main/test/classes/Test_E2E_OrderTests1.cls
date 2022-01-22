@isTest
public class Test_E2E_OrderTests1 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullOrderStructure(null, 100);
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_0() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_1() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_2() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_3() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_4() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_5() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_6() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_7() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_8() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_9() {
        // ACT
        Test.startTest();
        for (Account a : [SELECT Id FROM Account]) {
            a.PicklistField__c = 'Value Two';
            update a;
        }
        Test.stopTest();
        // ASSERT
        for (Order o : [SELECT Id, PicklistField__c FROM Order]) {
            System.assertEquals('Value Two', o.PicklistField__c);
        }
    }
}
