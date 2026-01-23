@isTest
public class TaskHandlerTest {
    @isTest
    static void testCreateTask() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Test.startTest();
        TaskHandler.createTask('Test Task', acc.Id);
        Test.stopTest();

        Task task = [SELECT Id, Subject FROM Task WHERE Subject = 'Test Task' LIMIT 1];
        System.assertNotEquals(null, task);
    }
}