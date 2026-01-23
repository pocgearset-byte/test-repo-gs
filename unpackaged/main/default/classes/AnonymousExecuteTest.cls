@isTest
public class AnonymousExecuteTest {
    public AnonymousExecuteTest() {}

    @IsTest
    static void testReceiveAndPrintTheString() {
        String receivedStr = 'Hello, World!';
        AnonymousExecute.receiveAndPrintTheString(receivedStr);
    }
}