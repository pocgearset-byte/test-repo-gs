public class ContactHandler {
    public static void createContact(String firstName, String lastName, Id accountId) {
        // Check if the accountId is invalid (i.e., not created by AccountHandler)
        if (accountId == null || String.isBlank(accountId)) {
            throw new IllegalArgumentException('Invalid Account ID for the Contact.');
        }
        
        //Contact con = new Contact(FirstName = firstName, LastName = lastName, AccountId = accountId);
        //insert con;
    }
    
    /*
    private static Boolean isValidAccount(Id accountId) {
        // Dummy logic to check for valid Account ID
        // In a real scenario, you would implement actual checks
        return false; // This will always trigger the error
    }*/
}