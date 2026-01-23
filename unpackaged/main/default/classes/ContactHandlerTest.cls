@isTest
public class ContactHandlerTest {
    @isTest
    static void testCreateContactWithInvalidAccount() {
        Test.startTest();
        try {
            // Pass an invalid Account ID (null or invalid)
            ContactHandler.createContact('John', 'Doe', null);
            // If no exception is thrown, fail the test
            System.assert(false, 'Expected an exception for invalid Account ID.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Invalid Account ID for the Contact.', e.getMessage());
        }
        Test.stopTest();
    }
}