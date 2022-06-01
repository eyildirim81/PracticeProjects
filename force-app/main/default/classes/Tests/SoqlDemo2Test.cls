@isTest 
public  class SoqlDemo2Test {

    
        @testSetup

        private static void setUpData(){
            account acc1 = new account ();
            acc1.Name= 'SI Test';
            acc1.Industry= 'Energy';
    
            account acc2= new account();
            acc2.Name= 'UI Test';
            acc2.Industry= 'Energy';
    
            account acc3= new account();
            acc3.Name= 'PI Test';
            acc3.Industry= 'Banking';
    
            list<account> listAcc = new List<Account>{acc1,acc2,acc3};
            insert listAcc;
    
            List<Contact> listcontact = new List<Contact>();
            for (Integer i = 0; i < 300; i++) {
                contact cnt =new contact();
                cnt.LastName= 'Test SOQL';
                if(i<100){
                    cnt.accountId=acc1.id;
                }else if(i<200){
                    cnt.AccountId=acc2.id;
                }else if(i<300){
                    cnt.AccountId=acc3.id;
                }
                listcontact.add(cnt);
            }
            insert listcontact;

        }
       @IsTest 
       Private static Void soqlDemoTest1(){
        Test.startTest();
        SoqlDemo2.childToParent_Soql1();
        test.stopTest();
        // system.assert(listcontact.size()>0);
    }
    @isTest 
    private static void sampleSoql4TEST(){
        List<Account> listAccounts = [select id, name, type from account];
        for (Account acc : listAccounts) {
            acc.type = 'Customer-Direct';

        }
        update listAccounts;
        List<Opportunity> createOpp = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            opportunity o = new Opportunity();
            o.name='opp1';
            o.StageName= 'close lost';
            o.CloseDate= date.today();
            if(i<100){
                o.accountid= listAccounts[0].id;
            }else if(i<200){
                o.AccountId= listAccounts[1].id;
            }else if(i<300){
                o.AccountId= listAccounts[2].id;
            }
            createOpp.add(o);
        }
        insert createOpp;

        test.startTest();
        SoqlDemo2.sampleSoql4();
        test.stopTest();
    }
}
