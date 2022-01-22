@isTest
public class Test_E2E_ServiceContractTests5 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullServiceContractStructure(null, 20);
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated1() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
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
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated11() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated12() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated13() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated14() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated15() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated16() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated17() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated18() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated19() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated20() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ARRANGE
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }
}
