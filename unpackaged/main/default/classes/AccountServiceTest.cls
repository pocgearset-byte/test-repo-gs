@isTest
public class AccountServiceTest {
    @isTest
    static void testCreateNewAccount() {
        Test.startTest();
        AccountService.createNewAccount('Test Account from Service');
        Test.stopTest();

        Account acc = [SELECT Id, Name FROM Account WHERE Name = 'Test Account from Service' LIMIT 1];
        System.assertNotEquals(null, acc);
    }

    @isTest
    static void testCreateNewAccountWithEmptyName() {
        Test.startTest();
        try {
            AccountService.createNewAccount('');
            System.assert(false, 'Expected an exception for empty account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be empty.', e.getMessage());
        }
        Test.stopTest();
    }

    @isTest
    static void testCreateNewAccountWithInvalidName() {
        Test.startTest();
        try {
            AccountService.createNewAccount('Invalid Account');
            System.assert(false, 'Expected an exception for invalid account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name "Invalid Account" is not allowed.', e.getMessage());
        }
        Test.stopTest();
    }
}