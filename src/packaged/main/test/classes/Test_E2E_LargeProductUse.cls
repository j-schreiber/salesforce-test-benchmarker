@isTest
public class Test_E2E_LargeProductUse {
    private static final String PRICEBOOK_NAME = 'Large Products Use';

    @TestSetup
    static void makeData() {
        Pricebook2 pb = TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
        List<Account> accs = TestFixtures.InsertFullOrderStructure(pb.Id);
    }

    @isTest
    static void useProducts_DoNothingElse_1() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_6() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_7() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_8() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_9() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_10() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_1() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_2() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_3() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_4() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_5() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_6() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_7() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_8() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_9() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_2_10() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_1() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_2() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_3() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_4() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_5() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_6() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_7() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_8() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_9() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_3_10() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_1() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_2() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_3() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_4() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_5() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_6() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_7() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_8() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_9() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_4_10() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_1() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_2() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_3() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_4() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_5() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_6() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_7() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_8() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_9() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }

    @isTest
    static void useProducts_DoNothingElse_5_10() {
        // ARRANGE
        Order ord = [SELECT Id FROM Order LIMIT 1];
        // ACT
        ord.EffectiveDate = System.today().addDays(30);
        update ord;
        // ASSERT
        System.assertEquals([SELECT COUNT() FROM Product2], [SELECT COUNT() FROM OrderItem WHERE OrderId = :ord.Id]);
    }
}
