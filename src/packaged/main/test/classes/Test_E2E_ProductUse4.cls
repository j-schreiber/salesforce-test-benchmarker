@isTest
public class Test_E2E_ProductUse4 {
    private static final String PRICEBOOK_NAME = 'Products Use PB 4';

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
}
