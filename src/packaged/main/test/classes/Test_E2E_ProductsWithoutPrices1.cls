@isTest
public class Test_E2E_ProductsWithoutPrices1 {
    @TestSetup
    static void makeData() {
        TestFixtures.InsertDefaultProducts(20);
    }

    @isTest
    static void deleteProducts_DoNothingElse_1() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_2() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_3() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_4() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_5() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_6() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_7() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_8() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_9() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_10() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }
}
