global class BatchSfpeRefreshDeletion implements Database.Batchable<SObject> {
    global final String objectInput;
    global final Integer limitInput;

    global BatchSfpeRefreshDeletion(String objectInput, Integer limitInput) {
        this.objectInput = objectInput;
        this.limitInput = limitInput;
    }

    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'SELECT Id FROM ' + String.escapeSingleQuotes(objectInput);
        // Ensure limitInput is valid before appending
        if (limitInput != null && limitInput > 0) {
            query += ' LIMIT ' + limitInput;
        }
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<SObject> scope) {
        try {
            delete scope;
        } catch (Exception e) {
            // Log exception to debug logs
            System.debug(LoggingLevel.ERROR, 'Error deleting records in BatchSfpeRefreshDeletion: ' + e.getMessage());
        }
    }

    global void finish(Database.BatchableContext BC) {
        System.debug('BatchSfpeRefreshDeletion execution completed for object: ' + objectInput);
    }
}