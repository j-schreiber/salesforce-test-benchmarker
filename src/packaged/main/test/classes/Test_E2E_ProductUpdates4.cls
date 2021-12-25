@isTest
public class Test_E2E_ProductUpdates4 {
    private static final String PRICEBOOK_NAME = 'Product Validation PB 4';

    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
    }

    @isTest
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful() {
        // ACT
        Product2 baseProduct = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' LIMIT 1];
        baseProduct.Name = 'Test Name New';
        baseProduct.ProductCode = 'PC-1';
        baseProduct.ImageLink__c = 'https://mobilityhouse.com/random-image.png';
        baseProduct.Description = 'Description';
        baseProduct.DescriptionFormatted__c = '<p>Formatted</p>';
        baseProduct.Status__c = 'Active';
        Database.SaveResult sr = Database.update(baseProduct);
        // ASSERT
        System.assertEquals(true, sr.isSuccess(), 'is success: ' + sr.getErrors());
    }

    @isTest
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful() {
        // ACT
        Product2 subscriptionProduct = [SELECT Id FROM Product2 WHERE ProductCode = 'B-1'];
        subscriptionProduct.Name = 'Test Name New';
        subscriptionProduct.ProductCode = 'PC-1';
        subscriptionProduct.Status__c = 'Active';
        subscriptionProduct.RenewalTerm__c = 1;
        subscriptionProduct.MinimumContractTerm__c = '12 months';
        subscriptionProduct.TerminationPeriod__c = '1 month';
        Database.update(subscriptionProduct);
        // ASSERT
        subscriptionProduct = [
            SELECT Id, RenewalTerm__c, MinimumContractTerm__c, TerminationPeriod__c
            FROM Product2
            WHERE Id = :subscriptionProduct.Id
        ];
        System.assertEquals(1, subscriptionProduct.RenewalTerm__c, 'renewal term updated');
        System.assertEquals('12 months', subscriptionProduct.MinimumContractTerm__c, 'minimum contract term updated');
        System.assertEquals('1 month', subscriptionProduct.TerminationPeriod__c, 'minimum contract term updated');
    }

    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated() {
        // ACT
        Product2 subscriptionProduct = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription' LIMIT 1];
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
        Database.SaveResult sr = Database.update(subscriptionProduct, false);
        // ASSERT
        System.assertEquals(false, sr.isSuccess(), 'update successful');
        System.assertEquals(
            System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
            sr.getErrors()[0].getStatusCode(),
            'first error is custom validation: ' + sr.getErrors()
        );
    }

    @isTest
    public static void updateType_ToSubscription_CanNotBeUpdated() {
        // ACT
        Product2 baseProduct = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' LIMIT 1];
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
        Database.SaveResult sr = Database.update(baseProduct, false);
        // ASSERT
        System.assertEquals(false, sr.isSuccess(), 'update successful');
        System.assertEquals(
            System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
            sr.getErrors()[0].getStatusCode(),
            'first error is custom validation: ' + sr.getErrors()
        );
    }

    @isTest
    public static void updateBillingCycle_Monthly_CanNotBeUpdated() {
        // ACT
        Product2 subscriptionProduct = [SELECT Id FROM Product2 WHERE ProductCode = 'B-1' LIMIT 1];
        subscriptionProduct.BillingCycle__c = 'Monthly';
        Database.SaveResult sr = Database.update(subscriptionProduct, false);
        // ASSERT
        System.assertEquals(false, sr.isSuccess(), 'update successful');
        System.assertEquals(
            System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
            sr.getErrors()[0].getStatusCode(),
            'first error is custom validation: ' + sr.getErrors()
        );
    }

    @isTest
    public static void updateAutomaticRenewal_Deactivate_CanNotBeUpdated() {
        // ACT
        Product2 subscriptionProduct = [SELECT Id FROM Product2 WHERE ProductCode = 'B-1' LIMIT 1];
        subscriptionProduct.AutomaticRenewal__c = false;
        subscriptionProduct.RenewalTerm__c = null;
        Database.SaveResult sr = Database.update(subscriptionProduct, false);
        // ASSERT
        System.assertEquals(false, sr.isSuccess(), 'update successful');
        System.assertEquals(
            System.StatusCode.FIELD_CUSTOM_VALIDATION_EXCEPTION,
            sr.getErrors()[0].getStatusCode(),
            'first error is custom validation: ' + sr.getErrors()
        );
    }
}
