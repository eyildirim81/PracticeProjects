trigger salesforceprojectTrigger on salesforce_Project__c (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        SalesforceProjectTriggerHandler.creatDefaultSalesforceTicketr(trigger.new);
       
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}