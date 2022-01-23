@isTest
public class Test_E2E_ServiceContractTests5 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullServiceContractStructure(null, 20);
    }

    @isTest
    static void insertContract_NullSchedules_ValueInitialised_1() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a)));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(0, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_2() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 2));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(2, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_3() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 3));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(3, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_4() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 4));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(4, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_5() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 5));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(5, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_6() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 6));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(6, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_7() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 7));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(7, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_8() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 8));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(8, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_9() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 9));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(9, sc.Schedules__c);
        }
    }

    @isTest
    static void insertContract_HasScheduleOnInsert_ValueInitialised_10() {
        // ARRANGE
        List<Account> accs = [SELECT Id FROM Account];
        delete [SELECT Id FROM ServiceContract];

        // ACT
        Test.startTest();
        List<ServiceContract> scs = new List<ServiceContract>();
        for (Account a : accs) {
            scs.add(new ServiceContract(AccountId = a.Id, Name = 'Test Contract ' + accs.indexOf(a), Schedules__c = 10));
        }
        insert scs;
        Test.stopTest();

        // ASSERT
        for (ServiceContract sc : [SELECT Id, Schedules__c FROM ServiceContract]) {
            System.assertEquals(10, sc.Schedules__c);
        }
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
