@isTest
public class AccountHandlerTest {
    @isTest
    static void testCreateAccount() {
        // Test with a valid name
        Test.startTest();
        AccountHandler.createAccount('Test Account');
        Test.stopTest();

        Account acc = [SELECT Id, Name FROM Account WHERE Name = 'Test Account' LIMIT 1];
        System.assertNotEquals(null, acc);
    }

    @isTest
    static void testCreateAccountWithEmptyName() {
        // Test with an empty name, expecting an exception to be thrown
        Test.startTest();
        try {
            AccountHandler.createAccount('');
            System.assert(false, 'Expected an exception for empty account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be empty.', e.getMessage());
        }
        Test.stopTest();
    }
}