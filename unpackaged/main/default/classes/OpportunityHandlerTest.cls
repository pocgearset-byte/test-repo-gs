@isTest
public class OpportunityHandlerTest {
    @isTest
    static void testCreateOpportunity() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Test.startTest();
        OpportunityHandler.createOpportunity('Test Opportunity', acc.Id);
        Test.stopTest();

        Opportunity opp = [SELECT Id, Name FROM Opportunity WHERE Name = 'Test Opportunity' LIMIT 1];
        System.assertNotEquals(null, opp);
    }
}