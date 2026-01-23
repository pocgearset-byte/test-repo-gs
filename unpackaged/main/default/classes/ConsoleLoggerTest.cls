@isTest
private class ConsoleLoggerTest {
    @isTest
    static void testLogMessages() {
        // Start the test
        Test.startTest();
        
        // Call the method to log messages
        ConsoleLogger.logMessages();
        
        // End the test
        Test.stopTest();
        
        // Verify that the debug logs contain the expected messages
        // Note: As of now, Salesforce does not allow direct assertions on debug logs,
        // so we will not be able to verify the log messages directly in the test.
        // We can only ensure that the method executes without exceptions.
    }
}