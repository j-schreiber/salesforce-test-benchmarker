@isTest
public class Test_E2E_ServiceContractTests5 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullServiceContractStructure(null, 20);
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated1() {
        // ARRANGE
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];

        // ACT
        for (Integer i = 0; i < scs.size(); i++) {
            scs[i].Schedules__c = i;
        }
        update scs;
        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c, (SELECT Id FROM ContractSchedules__r) FROM ServiceContract]) {
            System.assertEquals(sc.Schedules__c, sc.ContractSchedules__r.size());
        }
    }

    @isTest
    static void setSchedules_IterateCount_SchedulesCreated2() {
        // ARRANGE
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
        ServiceContract mockServiceContract = (ServiceContract) TestMockFactory.createGenericMock(
            'MockData_ServiceContract_WithLineItems',
            ServiceContract.class
        );
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
