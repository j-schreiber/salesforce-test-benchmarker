@isTest
public class Test_E2E_OrderTests3 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullOrderStructure(null, 100);
    }

    @isTest
    static void updatePicklist_WithDmlInALoop_0() {
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
        // ARRANGE
        Order mockOrder = (Order) TestMockFactory.createGenericMock('MockData_Order_WithLineItems', Order.class);

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
