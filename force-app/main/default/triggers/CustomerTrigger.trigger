trigger CustomerTrigger on Customer__c (before delete) {
    if (trigger.isDelete && Trigger.isBefore){
        CustomerHandler.ActiveCustomerDelete(Trigger.Old);
    }

}