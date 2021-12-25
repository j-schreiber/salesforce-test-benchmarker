@isTest
public class Test_E2E_ProductUse7 {
    private static final String PRICEBOOK_NAME = 'Products Use PB 7';

    @TestSetup
    static void makeData() {
        Pricebook2 pb = TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
        List<Account> accs = TestFixtures.InsertFullOrderStructure(pb.Id);
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
