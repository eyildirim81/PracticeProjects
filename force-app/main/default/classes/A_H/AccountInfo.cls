public  class AccountInfo {
    public static void showAccounts() {
        list<account> accountWithCloseOpp  =new list<account>();

        date today= date.today();

        accountWithCloseOpp= [select id, name , (select id, name from opportunities where CloseDate >today) from Account];

        System.debug(accountWithCloseOpp);

        for (account Acc : accountWithCloseOpp) {
            System.debug('account name is '+ Acc.name);

            List<Opportunity> eachOpps= Acc.Opportunities;
            
            for (opportunity opp : eachOpps) {
                System.debug(opp.name+Acc.Name);
                
            }
            System.debug('--------------');
        }
    }
}
