@isTest
public class GreetingServiceTest {
    @isTest
    static void testGetGreeting() {
        // Arrange
        String name = 'Alice';

        // Act
        Test.startTest();
        String greeting = GreetingService.getGreeting(name);
        Test.stopTest();

        // Assert
        System.assertEquals('Hello, Alice!', greeting, 'The greeting message should be correct.');
    }

    @isTest
    static void testGetGreetingWithEmptyName() {
        // Act & Assert
        Test.startTest();
        try {
            GreetingService.getGreeting('');
            System.assert(false, 'Expected an exception for empty name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Name cannot be empty.', e.getMessage());
        }
        Test.stopTest();
    }
}