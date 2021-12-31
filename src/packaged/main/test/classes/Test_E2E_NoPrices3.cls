@isTest
public class Test_E2E_NoPrices3 {
    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithStandardPrices(20);
    }

    @isTest
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product'];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Name = 'Test Name New';
            baseProduct.ImageLink__c = 'https://mobilityhouse.com/random-image.png';
            baseProduct.Description = 'Description';
            baseProduct.DescriptionFormatted__c = '<p>Formatted</p>';
            baseProduct.Status__c = 'Active';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(true, sr.isSuccess(), 'is success: ' + sr.getErrors());
        }
    }

    @isTest
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Name = 'Test Name New';
            subscriptionProduct.ImageLink__c = 'https://mobilityhouse.com/random-image.png';
            subscriptionProduct.Description = 'Description';
            subscriptionProduct.DescriptionFormatted__c = '<p>Formatted</p>';
            subscriptionProduct.Status__c = 'Active';
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(true, sr.isSuccess(), 'is success: ' + sr.getErrors());
        }
    }

    @isTest
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful_2() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product'];
        for (Product2 baseProduct : baseProducts) {
            baseProduct.Name = 'Test Name New';
            baseProduct.ImageLink__c = 'https://mobilityhouse.com/random-image.png';
            baseProduct.Description = 'Description';
            baseProduct.DescriptionFormatted__c = '<p>Formatted</p>';
            baseProduct.Status__c = 'Active';
        }
        Database.SaveResult[] srs = Database.update(baseProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(true, sr.isSuccess(), 'is success: ' + sr.getErrors());
        }
    }

    @isTest
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful_2() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.Name = 'Test Name New';
            subscriptionProduct.ImageLink__c = 'https://mobilityhouse.com/random-image.png';
            subscriptionProduct.Description = 'Description';
            subscriptionProduct.DescriptionFormatted__c = '<p>Formatted</p>';
            subscriptionProduct.Status__c = 'Active';
        }
        Database.SaveResult[] srs = Database.update(subscriptionProducts, false);
        // ASSERT
        for (Database.SaveResult sr : srs) {
            System.assertEquals(true, sr.isSuccess(), 'is success: ' + sr.getErrors());
        }
    }

    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
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
    public static void updateType_ToSubscription_CanNotBeUpdated() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product'];
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_2() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
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
    public static void updateType_ToSubscription_CanNotBeUpdated_2() {
        // ACT
        List<Product2> baseProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product'];
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
    public static void updateBillingCycle_Monthly_CanNotBeUpdated() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.BillingCycle__c = 'Monthly';
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
    public static void updateBillingCycle_Monthly_CanNotBeUpdated_2() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.BillingCycle__c = 'Monthly';
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
}
