@isTest
public class Test_E2E_ProductUpdates6 {
    private static final String PRICEBOOK_NAME = 'Product Validation PB 6';

    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful0() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful1() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful2() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful3() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful4() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful5() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful8() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful9() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful0() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful1() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful2() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful3() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful4() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful5() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful8() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateSubscriptionProduct_ChangeName_UpdateSuccessful9() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
}
