public class ConsoleLogger {
    // Method to log messages to the console
    public static void logMessages() {
        System.debug('This is an info message.');
        System.debug(LoggingLevel.INFO, 'This is an info message with logging level.');
        System.debug('This is a warning message.');
        System.debug(LoggingLevel.WARN, 'This is a warning message with logging level.');
        System.debug('This is an error message.');
        System.debug(LoggingLevel.ERROR, 'This is an error message with logging level.');
    }
    
    // This is a comment to include in changes into the QA environment
    // this is a test
}