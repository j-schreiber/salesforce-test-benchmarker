@isTest
public class Test_E2E_ProductReads2 {
    private static final String PRICEBOOK_NAME = 'Product Read 2';

    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
    }

    @isTest
    static void readProducts_DoNothingElse_1() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_2() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_3() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_4() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_5() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_6() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_7() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_8() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_9() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }

    @isTest
    static void readProducts_DoNothingElse_10() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], prods.size());
    }
}
