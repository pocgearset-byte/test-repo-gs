public with sharing class FieldSetController {
    public Case caseRecord { get; set; }

    public FieldSetController(ApexPages.StandardController controller) {
        caseRecord = (Case)controller.getRecord();
    }

    public List<Schema.FieldSetMember> getFieldSetFields() {
        List<Schema.FieldSetMember> fieldMembers = new List<Schema.FieldSetMember>();

        // Retrieve the Case object describe information
        Schema.SObjectType caseType = Schema.getGlobalDescribe().get('Case');
        Schema.DescribeSObjectResult caseDescribe = caseType.getDescribe();
        Schema.FieldSet fieldSet = caseDescribe.fieldSets.getMap().get('Field_Set_Repo_Cleaner');

        if (fieldSet != null) {
            fieldMembers = fieldSet.getFields();
        }

        return fieldMembers;
    }
}