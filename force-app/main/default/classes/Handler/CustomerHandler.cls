public with sharing class CustomerHandler {
    public static void ActiveCustomerDelete( list<Customer__c> TriggerOld){
        set<id> setIds=new set<id>();
        set<id> inactiveIds=new set<id>();
    for(Customer__c eachCst:TriggerOld){

        if (eachCst.Active__c==true) {
            setIds.add(eachCst.id);
        }else{
            inactiveIds.add(eachCst.Id);
        }
    }

    if(!setIds.isEmpty()){
        List<Payments__c> PaymentList=[select id, name from Payments__c where Customer__c in: setIds];  
    
        if(!PaymentList.isEmpty()){
        delete PaymentList;
        }
    }

    if(!inactiveIds.isEmpty()){
        List<Payments__c> PaymentList1=[select id, name from Payments__c where Customer__c in: inactiveIds and mode__c='Online'];
       
        if(!PaymentList1.isEmpty())  {

            delete PaymentList1;
        }
    }
}

}
