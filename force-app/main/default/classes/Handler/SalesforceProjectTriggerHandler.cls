public with sharing class SalesforceProjectTriggerHandler {
    public static void creatDefaultSalesforceTicketr(list<Salesforce_Project__c> spTriggerNew) {

        try{
            list<Salesforce_Ticket__c> newList= new list<Salesforce_Ticket__c>();

            for (salesforce_project__c eachsp : spTriggerNew) {
                DefaultTicketInfo__c ticketInfo = DefaultTicketInfo__c.getOrgDefaults();
                salesforce_Ticket__c st= new salesforce_Ticket__c();
                // st.Subject__c='Default ST';
                st.Subject__c = ticketInfo.Subject__c; 
                // st.Description__c = 'A default ticket for project';
                st.Description__c = ticketInfo.Description__c;

                st.Salesforce_Project__c=eachsp.Id;
                st.Priority__c= 'High';
                newList.add(st);

                if(!newList.isEmpty()){
                    insert newList;
                }
       
        } 
        
         }catch (Exception ex){
             for (salesforce_project__c sp: spTriggerNew){
                 sp.addError('Error in default ticket created. please contact your admin');
             }
         }
         
    }
    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, 
   List<Salesforce_Project__c> spTriggerOld,
   Map<id, Salesforce_Project__c> spTriggerNewMap,
   Map<id, Salesforce_Project__c> spTriggerOldMap) {
       //get set<id> where status is changed.
       set<id> spIds = new set<id>();
       for (salesforce_project__c sp : spTriggerNew) {
           //if new record status != old record status
           //status is changed to 'Complated'
            if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
            && sp.Status__c == 'Completed'){
                spIds.add(sp.Id);
            }
       }
       if(!spIds.isEmpty()){
           //call future method
           updateTicketStatusCompleted(spIds);
       }
   }
   @future
   private static void updateTicketStatusCompleted(set<id> spIds) {
       List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
       for (salesforce_ticket__c st : listST) {
           st.Status__c = 'Completed';
       }
       if (!listST.isEmpty()) {
           update listST;
       }
   }
 }
   

