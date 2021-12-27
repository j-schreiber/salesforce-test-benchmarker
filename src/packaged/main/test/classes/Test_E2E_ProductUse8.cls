@isTest
public class Test_E2E_ProductUse8 {
    private static final String PRICEBOOK_NAME = 'Products Use PB 8';

    @TestSetup
    static void makeData() {
        Pricebook2 pb = TestFixtures.InsertProductsWithCustomPrices(PRICEBOOK_NAME);
        List<Account> accs = TestFixtures.InsertFullServiceContractStructure(pb.Id);
    }

    @isTest
    static void deleteContractLineItems_DoNothingMore_0() {
        // ACT
        delete [SELECT Id FROM ContractLineItem];
        // ASSERT
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems) FROM ServiceContract]) {
            System.assertEquals(0, sc.ContractLineItems.size());
        }
    }

    @isTest
    static void deleteContractLineItems_DoNothingMore_1() {
        // ACT
        delete [SELECT Id FROM ContractLineItem];
        // ASSERT
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems) FROM ServiceContract]) {
            System.assertEquals(0, sc.ContractLineItems.size());
        }
    }

    @isTest
    static void deleteContractLineItems_DoNothingMore_2() {
        // ACT
        delete [SELECT Id FROM ContractLineItem];
        // ASSERT
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems) FROM ServiceContract]) {
            System.assertEquals(0, sc.ContractLineItems.size());
        }
    }

    @isTest
    static void deleteContractLineItems_DoNothingMore_3() {
        // ACT
        delete [SELECT Id FROM ContractLineItem];
        // ASSERT
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems) FROM ServiceContract]) {
            System.assertEquals(0, sc.ContractLineItems.size());
        }
    }

    @isTest
    static void deleteContractLineItems_DoNothingMore_4() {
        // ACT
        delete [SELECT Id FROM ContractLineItem];
        // ASSERT
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems) FROM ServiceContract]) {
            System.assertEquals(0, sc.ContractLineItems.size());
        }
    }

    @isTest
    static void deleteContractLineItems_HasStartDate_PreventsDelete0() {
        // ARRANGE
        List<ContractLineItem> clis = new List<ContractLineItem>();
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems LIMIT 10) FROM ServiceContract]) {
            for (ContractLineItem cli : sc.ContractLineItems) {
                cli.StartDate = System.today();
                clis.add(cli);
            }
        }
        update clis;

        // ACT
        try {
            delete [SELECT Id FROM ContractLineItem];
            System.assert(false, 'expected exception');
        } catch (System.DmlException de) {
            // all good
        }
    }
    @isTest
    static void deleteContractLineItems_HasStartDate_PreventsDelete1() {
        // ARRANGE
        List<ContractLineItem> clis = new List<ContractLineItem>();
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems LIMIT 20) FROM ServiceContract]) {
            for (ContractLineItem cli : sc.ContractLineItems) {
                cli.StartDate = System.today();
                clis.add(cli);
            }
        }
        update clis;

        // ACT
        try {
            delete [SELECT Id FROM ContractLineItem];
            System.assert(false, 'expected exception');
        } catch (System.DmlException de) {
            // all good
        }
    }
    @isTest
    static void deleteContractLineItems_HasStartDate_PreventsDelete2() {
        // ARRANGE
        List<ContractLineItem> clis = new List<ContractLineItem>();
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems LIMIT 30) FROM ServiceContract]) {
            for (ContractLineItem cli : sc.ContractLineItems) {
                cli.StartDate = System.today();
                clis.add(cli);
            }
        }
        update clis;

        // ACT
        try {
            delete [SELECT Id FROM ContractLineItem];
            System.assert(false, 'expected exception');
        } catch (System.DmlException de) {
            // all good
        }
    }
    @isTest
    static void deleteContractLineItems_HasStartDate_PreventsDelete3() {
        // ARRANGE
        List<ContractLineItem> clis = new List<ContractLineItem>();
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems LIMIT 40) FROM ServiceContract]) {
            for (ContractLineItem cli : sc.ContractLineItems) {
                cli.StartDate = System.today();
                clis.add(cli);
            }
        }
        update clis;

        // ACT
        try {
            delete [SELECT Id FROM ContractLineItem];
            System.assert(false, 'expected exception');
        } catch (System.DmlException de) {
            // all good
        }
    }
    @isTest
    static void deleteContractLineItems_HasStartDate_PreventsDelete4() {
        // ARRANGE
        List<ContractLineItem> clis = new List<ContractLineItem>();
        for (ServiceContract sc : [SELECT Id, (SELECT Id FROM ContractLineItems LIMIT 50) FROM ServiceContract]) {
            for (ContractLineItem cli : sc.ContractLineItems) {
                cli.StartDate = System.today();
                clis.add(cli);
            }
        }
        update clis;

        // ACT
        try {
            delete [SELECT Id FROM ContractLineItem];
            System.assert(false, 'expected exception');
        } catch (System.DmlException de) {
            // all good
        }
    }
}
