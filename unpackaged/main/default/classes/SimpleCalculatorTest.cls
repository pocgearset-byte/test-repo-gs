@isTest
public class SimpleCalculatorTest {
    // Test the add method
    @isTest
    static void testAdd() {
        Integer result = SimpleCalculator.add(5, 3);
        System.assertEquals(8, result, 'The add method should return 8');
    }

    // Test the subtract method
    @isTest
    static void testSubtract() {
        Integer result = SimpleCalculator.subtract(5, 3);
        System.assertEquals(2, result, 'The subtract method should return 2');
    }
}