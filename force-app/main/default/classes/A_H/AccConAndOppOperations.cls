public  class AccConAndOppOperations {
    public static list<account> accList(){
        List<Account> acc1= new List<Account>();
        acc1= [select name, annualrevenue, type,accountsource from account];
        return acc1;

        
    }

    public static void oppList (string source, string stage){
        List<Opportunity> oppListWithLead= new List<Opportunity>();
        oppListWithLead=[ select name, stagename, leadsource from Opportunity where LeadSource=:source and stagename=:stage ];
        System.debug(oppListWithLead);
    }

    public static void accOfType (){
        List<Account> acc1= [select name, annualrevenue, (select name,amount from opportunities where stagename='closed won') from account where type ='customer direct'];

        for (account eachaccount : acc1) {
            for (opportunity eachopp : eachaccount.Opportunities) {
                System.debug(eachopp.name);
                System.debug(eachopp.amount);
            }
        }

    }
    public static Account acc3 (String name,decimal annualr, String tp){
        Account a1 = new Account();
        if (name !=  null && name != ''){
            a1.name = name;
            a1.AnnualRevenue = annualr;
            a1.Type = tp;
            insert a1;

        } else {
            System.debug('Account without name cannot be created ' );
        }
        return a1;
    }

    public static decimal sumAmmount(){
        List<Opportunity> oppAmmounts= [select amount from Opportunity where stagename='Closed Won' and amount!=null];
        decimal sum=0;
        for (opportunity eachopp :oppAmmounts ) {
            decimal eachAmount= eachopp.amount;
            sum=sum+eachAmount;
        }
        System.System.debug('Total amount of closed won opportuities '+sum);
        return sum;
    }

    public static List<Account> allAccount(string x){
        List<Account> listAcc=[select name,id from account where id in (select accountid from Opportunity where stageName=:x)];
        return listAcc;
    }

    public static List<Account> allAcc(){
        List<Account> listAcc=[select name, id from account where id IN (select accountid from Contact)];
        return listAcc;

    }

    public static void newContact(Id x){

        account acc=[select name, id from account where id=:x];
        
        if(acc!=null){
        contact cnt = new Contact();
        cnt.LastName=acc.Name;
        cnt.accountid=acc.id;
        insert cnt;
        }else{
          System.debug('You entered an invalid ID')  ;
        }
    }

    public static void listOpp(){
        List<Opportunity> oppWithDesc=[select name,id, description from Opportunity order by Amount desc nulls last limit 10 ];
        for (opportunity eachOpp : oppWithDesc) {
            eachOpp.Description='This is one of the top 10 opportunity. Please work on this properly';
            
        }
        update oppWithDesc;
    }
    public static List<Opportunity> oppList(integer n, id x){
        
        account acc=[select id, name, AnnualRevenue from account where id=:x];

        List<Opportunity> listOpp= new List<Opportunity>();

        if (n>0) {
            for (Integer i= 1; i <=n; i++) {
                Opportunity opp1= new Opportunity();
                opp1.name=acc.Name +i;
                opp1.CloseDate= date.today().addYears(3);
                opp1.StageName='prospecting';

                if(acc.AnnualRevenue!=null){
                opp1.amount= acc.AnnualRevenue/n;
                }
                opp1.AccountId=acc.id;
                listopp.add(opp1);
               
            }
            insert listOpp;
            
        }else {
            System.debug('Please tell us how many opportunities needs to be created');
        }
        return listOpp;
    }
    public static void listAccount2(){
       List<Account> acc=[select id, name from account where id not in (select accountid from contact)] ;

       List<Contact> contList =new List<Contact>();

       for (Account eachacc : acc) {
           contact cont1= new Contact();
           cont1.accountid=eachacc.id;
           cont1.lastname=eachacc.name;
           contList.add(cont1);
       }
       insert contList;

    }
    public static void deleteOpp(){
        list <Opportunity> oppList=[select id, name from Opportunity where StageName='closed lost' and Amount< 20000];
        delete oppList;

    }

}
