@isTest
public class Test_E2E_ProductUpdates7 {
    private static final String PRICEBOOK_NAME = 'Product Validation PB 7';

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
    public static void updateType_ToBaseProduct_CanNotBeUpdated1() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Type__c = 'Base Product';
            // just set to null so other validation rules don't fire
            subscriptionProduct.BillingCycle__c = null;
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.MinimumContractTerm__c = null;
            subscriptionProduct.RenewalTerm__c = null;
            subscriptionProduct.QuantityUnitOfMeasure = 'Each';
            subscriptionProduct.LineItemDateValidationMode__c = null;
            subscriptionProduct.BillingMode__c = null;
            subscriptionProduct.TerminationPeriod__c = null;
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }
    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated2() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Type__c = 'Base Product';
            // just set to null so other validation rules don't fire
            subscriptionProduct.BillingCycle__c = null;
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.MinimumContractTerm__c = null;
            subscriptionProduct.RenewalTerm__c = null;
            subscriptionProduct.QuantityUnitOfMeasure = 'Each';
            subscriptionProduct.LineItemDateValidationMode__c = null;
            subscriptionProduct.BillingMode__c = null;
            subscriptionProduct.TerminationPeriod__c = null;
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }
    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated3() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Type__c = 'Base Product';
            // just set to null so other validation rules don't fire
            subscriptionProduct.BillingCycle__c = null;
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.MinimumContractTerm__c = null;
            subscriptionProduct.RenewalTerm__c = null;
            subscriptionProduct.QuantityUnitOfMeasure = 'Each';
            subscriptionProduct.LineItemDateValidationMode__c = null;
            subscriptionProduct.BillingMode__c = null;
            subscriptionProduct.TerminationPeriod__c = null;
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }
    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated4() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Type__c = 'Base Product';
            // just set to null so other validation rules don't fire
            subscriptionProduct.BillingCycle__c = null;
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.MinimumContractTerm__c = null;
            subscriptionProduct.RenewalTerm__c = null;
            subscriptionProduct.QuantityUnitOfMeasure = 'Each';
            subscriptionProduct.LineItemDateValidationMode__c = null;
            subscriptionProduct.BillingMode__c = null;
            subscriptionProduct.TerminationPeriod__c = null;
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }
    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated5() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' FOR UPDATE];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Type__c = 'Base Product';
            // just set to null so other validation rules don't fire
            subscriptionProduct.BillingCycle__c = null;
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.MinimumContractTerm__c = null;
            subscriptionProduct.RenewalTerm__c = null;
            subscriptionProduct.QuantityUnitOfMeasure = 'Each';
            subscriptionProduct.LineItemDateValidationMode__c = null;
            subscriptionProduct.BillingMode__c = null;
            subscriptionProduct.TerminationPeriod__c = null;
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }

    @isTest
    public static void updateType_ToSubscription_CanNotBeUpdated1() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Type__c = 'Subscription';
            // set valid values, so unrelated validation rules don't fire
            baseProduct.BillingCycle__c = 'Yearly';
            baseProduct.AutomaticRenewal__c = true;
            baseProduct.MinimumContractTerm__c = '12 months';
            baseProduct.RenewalTerm__c = 12;
            baseProduct.QuantityUnitOfMeasure = 'Each';
            baseProduct.LineItemDateValidationMode__c = 'Full Month';
            baseProduct.BillingMode__c = 'Advance';
            baseProduct.TerminationPeriod__c = '3 months';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }

    @isTest
    public static void updateType_ToSubscription_CanNotBeUpdated2() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Type__c = 'Subscription';
            // set valid values, so unrelated validation rules don't fire
            baseProduct.BillingCycle__c = 'Yearly';
            baseProduct.AutomaticRenewal__c = true;
            baseProduct.MinimumContractTerm__c = '12 months';
            baseProduct.RenewalTerm__c = 12;
            baseProduct.QuantityUnitOfMeasure = 'Each';
            baseProduct.LineItemDateValidationMode__c = 'Full Month';
            baseProduct.BillingMode__c = 'Advance';
            baseProduct.TerminationPeriod__c = '3 months';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }

    @isTest
    public static void updateType_ToSubscription_CanNotBeUpdated3() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Type__c = 'Subscription';
            // set valid values, so unrelated validation rules don't fire
            baseProduct.BillingCycle__c = 'Yearly';
            baseProduct.AutomaticRenewal__c = true;
            baseProduct.MinimumContractTerm__c = '12 months';
            baseProduct.RenewalTerm__c = 12;
            baseProduct.QuantityUnitOfMeasure = 'Each';
            baseProduct.LineItemDateValidationMode__c = 'Full Month';
            baseProduct.BillingMode__c = 'Advance';
            baseProduct.TerminationPeriod__c = '3 months';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }

    @isTest
    public static void updateType_ToSubscription_CanNotBeUpdated4() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Type__c = 'Subscription';
            // set valid values, so unrelated validation rules don't fire
            baseProduct.BillingCycle__c = 'Yearly';
            baseProduct.AutomaticRenewal__c = true;
            baseProduct.MinimumContractTerm__c = '12 months';
            baseProduct.RenewalTerm__c = 12;
            baseProduct.QuantityUnitOfMeasure = 'Each';
            baseProduct.LineItemDateValidationMode__c = 'Full Month';
            baseProduct.BillingMode__c = 'Advance';
            baseProduct.TerminationPeriod__c = '3 months';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }

    @isTest
    public static void updateType_ToSubscription_CanNotBeUpdated5() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Type__c = 'Subscription';
            // set valid values, so unrelated validation rules don't fire
            baseProduct.BillingCycle__c = 'Yearly';
            baseProduct.AutomaticRenewal__c = true;
            baseProduct.MinimumContractTerm__c = '12 months';
            baseProduct.RenewalTerm__c = 12;
            baseProduct.QuantityUnitOfMeasure = 'Each';
            baseProduct.LineItemDateValidationMode__c = 'Full Month';
            baseProduct.BillingMode__c = 'Advance';
            baseProduct.TerminationPeriod__c = '3 months';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(false, sr.isSuccess(), 'update successful');
            System.assertEquals(
                System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
                sr.getErrors()[0].getStatusCode(),
                'first error is custom validation: ' + sr.getErrors()
            );
        }
    }
}
