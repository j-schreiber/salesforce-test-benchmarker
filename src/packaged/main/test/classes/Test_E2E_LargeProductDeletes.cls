@isTest
public class Test_E2E_LargeProductDeletes {
    private static final String PRICEBOOK_NAME = 'Large Product Delete';

    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
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

    @isTest
    static void deleteProducts_DoNothingElse_11() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_12() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_13() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_14() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_15() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_16() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_17() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_18() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_19() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_20() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_21() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_22() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_23() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_24() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_25() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_26() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_27() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_28() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_29() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }

    @isTest
    static void deleteProducts_DoNothingElse_30() {
        // ARRANGE
        List<Product2> prods = [SELECT Id FROM Product2];
        // ACT
        delete prods;
        // ASSERT
        System.assertEquals(0, [SELECT COUNT() FROM Product2]);
    }
}
