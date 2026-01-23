public class GreetingService {
    // Method to return a greeting message
    public static String getGreeting(String name) {
        if (String.isBlank(name)) {
            throw new IllegalArgumentException('Name cannot be empty.');
        }
        return 'Hello, ' + name + '!';
    }
}