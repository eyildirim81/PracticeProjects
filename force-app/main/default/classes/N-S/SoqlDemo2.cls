public with sharing class SoqlDemo2 {
    public static void childToParent_Soql1() {
        //querying contact records.
        List<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];

        for (contact eachContact : listCnt) {
            string accName = eachContact.Account.Name;
            system.debug('contact name is ' + eachContact.name + ' its acc is ' + accName);
        }
    }

    public static void sampleSoql4() {
        list<account> accountWithOpplist =[select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        //list<account>
            //--> list<oppotunities>
        for (account eachAcc : accountWithOpplist) {
            system.debug('acc name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.AnnualRevenue);
            List<Opportunity> eachAccOpps = eachAcc.Opportunities;
            for (Opportunity opp : eachAccOpps) {
                system.debug(' opp name ' + opp.Name + ', opp amount ' + opp.Amount); //YES
            }
            system.debug('-----------------');
        }
    }

    public static void stageOpp(){
        List<Opportunity> Prospecting=[select id, name from Opportunity where stagename='prospecting'];
        System.debug(Prospecting.size());
        List<Opportunity> Qualification=[select id, name from Opportunity where stagename='Qualification'];
        System.debug(Qualification.size());
        List<Opportunity> ClosedWon=[select id, name from Opportunity where stagename='Closed Won'];
        System.debug(ClosedWon.size());
        List<Opportunity> ClosedLost=[select id, name from Opportunity where stagename='Closed Lost'];
        system.debug(closedLost.size());
        List<Opportunity> NeedsAnalysis=[select id, name from Opportunity where stagename='Needs Analysis'];
        system.debug(NeedsAnalysis.size());
    }
}
