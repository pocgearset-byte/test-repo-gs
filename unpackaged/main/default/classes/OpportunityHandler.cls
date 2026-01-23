public class OpportunityHandler {
    public static void createOpportunity(String name, Id accountId) {
        Opportunity opp = new Opportunity(Name = name, StageName = 'Prospecting', CloseDate = Date.today().addMonths(1), AccountId = accountId);
        insert opp;
    }
}