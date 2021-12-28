@isTest
public class Test_E2E_LargeProductUpdates {
    private static final String PRICEBOOK_NAME = 'Large Product Updates';

    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
    }

    @isTest
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful_1() {
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
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful_1() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_1() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_1() {
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
    public static void updateBillingCycle_Monthly_CanNotBeUpdated_1() {
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
    public static void updateAutomaticRenewal_Deactivate_CanNotBeUpdated_1() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.RenewalTerm__c = null;
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

    @isTest
    public static void updateAutomaticRenewal_Deactivate_CanNotBeUpdated_2() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.RenewalTerm__c = null;
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
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful_3() {
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
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful_3() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_3() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_3() {
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
    public static void updateBillingCycle_Monthly_CanNotBeUpdated_3() {
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
    public static void updateAutomaticRenewal_Deactivate_CanNotBeUpdated_3() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.RenewalTerm__c = null;
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
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful_4() {
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
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful_4() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_4() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_4() {
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
    public static void updateBillingCycle_Monthly_CanNotBeUpdated_4() {
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
    public static void updateAutomaticRenewal_Deactivate_CanNotBeUpdated_4() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.RenewalTerm__c = null;
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
    public static void updateBaseProduct_ChangeIrrelevantFields_UpdateSuccessful_5() {
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
    public static void updateSubscriptionProduct_ChangeIrrelevantFields_UpdateSuccessful_5() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_5() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_5() {
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
    public static void updateBillingCycle_Monthly_CanNotBeUpdated_5() {
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
    public static void updateAutomaticRenewal_Deactivate_CanNotBeUpdated_5() {
        // ACT
        List<Product2> subscriptionProducts = [SELECT Id FROM Product2 WHERE Type__c = 'Subscription'];
        for (Product2 subscriptionProduct : subscriptionProducts) {
            subscriptionProduct.AutomaticRenewal__c = false;
            subscriptionProduct.RenewalTerm__c = null;
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
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_1_6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_2_6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_3_6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_4_6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_5_6() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated_6_6() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_7_6() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_8_6() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_9_6() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_10_6() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_11_6() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_12_6() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_13_6() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_14_6() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_15_6() {
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
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_1_7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_2_7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_3_7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_4_7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateBaseProduct_ChangeName_UpdateSuccessful_5_7() {
        // ACT
        List<Product2> prods = [SELECT Id FROM Product2 WHERE Type__c = 'Base Product' FOR UPDATE];
        for (Product2 p : prods) {
            p.Name = 'Test Name New';
        }
        update prods;
    }
    @isTest
    public static void updateType_ToBaseProduct_CanNotBeUpdated_6_7() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_7_7() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_8_7() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_9_7() {
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
    public static void updateType_ToBaseProduct_CanNotBeUpdated_10_7() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_11_7() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_12_7() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_13_7() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_14_7() {
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
    public static void updateType_ToSubscription_CanNotBeUpdated_15_7() {
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
