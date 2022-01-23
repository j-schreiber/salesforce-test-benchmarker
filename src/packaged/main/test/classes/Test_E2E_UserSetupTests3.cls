@isTest
public class Test_E2E_UserSetupTests3 {
    @TestSetup
    static void makeData() {
        List<Account> accs = TestFixtures.InsertFullServiceContractStructure(null, 20);
        User testUserNoPerms = TestFixtures.CreateStandardUser('no-perms', new List<String>());
        User testUserWithPerms = TestFixtures.CreateStandardUser('perms', new List<String>{ 'Benchmarker_Full_Access' });
    }

    @isTest
    static void userHasPermissions_UpdateAuditField_UpdateAllowed_1() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(true, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals('Done', sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasPermissions_UpdateAuditField_UpdateAllowed_2() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 2';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(true, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals('Done 2', sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasPermissions_UpdateAuditField_UpdateAllowed_3() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 3';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(true, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals('Done 3', sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasPermissions_UpdateAuditField_UpdateAllowed_4() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 4';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(true, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals('Done 4', sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasPermissions_UpdateAuditField_UpdateAllowed_5() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 5';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(true, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals('Done 5', sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasNoPermissions_UpdateAuditField_UpdateFailed_1() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'no-perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(false, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals(null, sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasNoPermissions_UpdateAuditField_UpdateFailed_2() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'no-perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 2';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(false, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals(null, sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasNoPermissions_UpdateAuditField_UpdateFailed_3() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'no-perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 3';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(false, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals(null, sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasNoPermissions_UpdateAuditField_UpdateFailed_4() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'no-perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 4';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(false, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals(null, sc.SpecialAuditField__c);
        }
    }

    @isTest
    static void userHasNoPermissions_UpdateAuditField_UpdateFailed_5() {
        // ARRANGE
        List<ServiceContract> scs = [SELECT Id FROM ServiceContract];
        for (ServiceContract sc : scs) {
            sc.ApprovalStatus = 'Approved';
        }
        update scs;

        // ACT
        Test.startTest();
        User u = [SELECT Id FROM User WHERE Alias = 'no-perms'];
        System.runAs(u) {
            List<ServiceContract> testScs = [SELECT Id FROM ServiceContract];
            for (ServiceContract sc : testScs) {
                sc.SpecialAuditField__c = 'Done 5';
            }
            List<Database.SaveResult> srs = Database.update(testScs, false);
            for (Database.SaveResult sr : srs) {
                System.assertEquals(false, sr.isSuccess());
            }
        }
        Test.stopTest();

        // ASSERT
        List<ServiceContract> actualScs = [SELECT Id, SpecialAuditField__c FROM ServiceContract];
        for (ServiceContract sc : actualScs) {
            System.assertEquals(null, sc.SpecialAuditField__c);
        }
    }
}
