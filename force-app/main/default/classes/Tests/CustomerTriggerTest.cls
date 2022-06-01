@istest
public with sharing class CustomerTriggerTest {
    @TestSetup
    static void makeData(){
        list<customer__c> customerlist =new list<customer__c>();
        for (Integer i = 0; i < 200; i++) {
            customer__c c= new customer_c();
            if(i<100){
                c.Active__c= true;
            }else{
                c.Active__c= false;
            }
            customerlist.add(c);
            
        }
        insert customerlist;

        list<payments__c> paymentlist = new list<payments__c>();
        for (customer__c  eachCst : cuatomerlist) {
            for (integer j=0; j<10; j++) {
                payments__c pay= new payments();
                p.customer__c= c.id;
                if(j<5){
                    p.mode__c= 'Cash';
                }else{
                    p.mode__c= 'Online';
                }
                paymentlist.add(pay);
                
            }
            
        }
        insert paymentlist;
    }
    @isTest 
    static void deleteCustomerTest(){
        list<customer__c> customerlist = new list<customer__c>();
        customerlist= [ select id, name from customer__c];
        onlines= [ select id from payments__c where mode__c= 'Online'];
        test.startTest();
        delete customerlist;
        test.stopTest();
        list<payments__c> onlines = new list<payments__c>();
        online = [select id from payments__c where mode__c= 'Online'];
        system.assertEquals(0, onlines.size());
    }

}
