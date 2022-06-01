public  class SoqlDemo {
    public Static void accountSoql_1(){
        list<account> listacc = [select id, name from account where name like '%A%'];
        system.debug('account list: '+listacc);
        system.debug('# of accounts : '+listacc.size());

        Account acc= [ select name, website from account order by createdDate desc limit 1];

        system.debug(acc);

        string accName= acc.Name;
        string accPhone= acc.Phone;
        system.debug('accName: '+accName+ ' , phone is '+accPhone);
        system.debug('account number is '+ acc.AccountNumber);
    }

    public static void accountSoql_2(){
        account latestAcc= [select name, phone, AccountNumber from account order by createdDate desc limit 1];
        system.debug(latestAcc);

        id accid=latestAcc.id;
        string accName= latestAcc.Name;
        string accPhone= latestAcc.Phone;
        system.debug(accid);
        system.debug(accName);
        system.debug(accPhone);
    }

    public static void accountSoql_3(){
        list<account> listacc= [select id, name, phone, accountnumber from account order by CreatedDate desc];
        system.debug(listacc);
        // 11 records
        for (account  eachAccount : listacc) {
            // 1st record for the 1st iteration

            id accid=eachAccount.id;
            string accName= eachAccount.Name;
            string accPhone= eachAccount.Phone;
            system.debug(accid);
            system.debug(accName);
            system.debug(accPhone);
            system.debug('====================================');
        }
    }

    public static void soqlDemo_Filter(){
        string accNameFilter ='sof innovas';
        list<account> listacc= [select id, name from account where name=:accNameFilter];
        system.debug(listacc);
    }


}
