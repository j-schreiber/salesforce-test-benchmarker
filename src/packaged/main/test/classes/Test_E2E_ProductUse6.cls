@isTest
public class Test_E2E_ProductUse6 {
    private static final String PRICEBOOK_NAME = 'Products Use PB 6';
    private static final Boolean USE_STANDARD_PRICE_BOOK = true;

    @TestSetup
    static void makeData() {
        Pricebook2 pb = TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
        List<Account> accs = TestFixtures.InsertFullOrderStructure(pb.Id);
    }

    @isTest
    static void useProducts_DoNothingElse_1() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_2() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_3() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_4() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_5() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_6() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_7() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_8() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_9() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }

    @isTest
    static void useProducts_DoNothingElse_10() {
        // ARRANGE
        List<Order> ords = [SELECT Id FROM Order];
        delete [SELECT Id FROM OrderItem];
        // ACT
        for (Order o : ords) {
            List<OrderItem> ois = new List<OrderItem>();
            for (PricebookEntry pbe : [
                SELECT Id, UnitPrice
                FROM PricebookEntry
                WHERE Product2.Type__c = 'Subscription' AND Pricebook2.IsStandard = :USE_STANDARD_PRICE_BOOK
            ]) {
                ois.add(new OrderItem(OrderId = o.Id, PricebookEntryId = pbe.Id, UnitPrice = pbe.UnitPrice, Quantity = 10));
            }
            insert ois;
        }
        // ASSERT
        ords = [SELECT Id, (SELECT Id FROM OrderItems) FROM Order WHERE Id IN :ords];
        for (Order o : ords) {
            System.assertEquals([SELECT COUNT() FROM Product2 WHERE Type__c = 'Subscription'], o.OrderItems.size());
        }
    }
}
