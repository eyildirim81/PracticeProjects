@isTest 

public  class AccountTriggerTest {
    @isTest 

    private static void testMethod1(){
        account acc1 = new account ();
        acc1.Name= 'SI Test';
        acc1.Industry= 'Energy';
        acc1.active__c='Yes';
    
        account acc2= new account();
        acc2.Name= 'UI Test';
        acc2.Industry= 'Energy';
        acc1.active__c='No';
    
        account acc3= new account();
        acc3.Name= 'PI Test';
        acc3.Industry= 'Banking';
        acc1.active__c='No';
    
        list<account> listAcc = new List<Account>{acc1,acc2,acc3};
        insert listAcc;

        for( account acc : listAcc){
            acc.Description='update in tests';
            acc1.active__c='Yes';
        }
        update listAcc;

        // check here if descriription is updated 
        List<Account> accounts= [select id, name, description from Account];
        system.assertEquals('Account is noe active. Enjoy', accounts[1].Description);
    }
}
