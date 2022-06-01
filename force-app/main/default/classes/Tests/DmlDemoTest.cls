@isTest 
public class DmlDemoTest {
    @isTest
    public static void DmlDemoTest1() {
        dmldemo.dmlInsertDemo_stndObj();
         
        List<Account> listAcc= [select id, name from account ];
        System.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }

    @isTest 
    Public static void DmlDemoTest2(){
        account acc = new account();
        acc.Name= 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();

        // we want to check if contact is being inserted in account

        List<Contact> listContact = [select id, name from Contact];
        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', listContact[0].LastName);
    }
}
