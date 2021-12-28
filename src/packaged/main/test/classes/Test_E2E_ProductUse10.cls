@isTest
public class Test_E2E_ProductUse10 {
    @TestSetup
    static void makeData() {
        TestFixtures.InsertProductsWithStandardPrices();
        List<Account> accs = TestFixtures.InsertFullServiceContractStructure(Test.getStandardPricebookId(), 25);
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated1() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated2() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated3() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated4() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated5() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated6() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated7() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated8() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated9() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated10() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        Test.startTest();
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        Test.stopTest();
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }
}
