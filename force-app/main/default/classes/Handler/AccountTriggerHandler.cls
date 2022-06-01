public with sharing class AccountTriggerHandler {
    public static void updateAccountDescription(List<Account> accTriggerNew, 
                                                List<Account> accTriggerOld,    
                                                map<id, account> accTriggernewMap, 
                                                map<id,account> accTriggerOldMap) {
            System.debug('inside handler method');
        for (account eachacc :accTriggerNew) {
            boolean updateDesc= false;
            if(accTriggerOldMap==null && eachAcc.active__c=='Yes'){
                updateDesc=true;
                // eachAcc.Description='Account is now active. Please enjoy!';
            }
            if(accTriggerOldMap!=null) {
                // check if active is updated to yes
                if(eachAcc.active__c=='Yes' && accTriggerOldMap.get(eachAcc.id).active__c!=accTriggernewMap.get(eachAcc.id).active__c ){
                    updateDesc=true;
                    // eachAcc.Description='Account is noe active. Enjoy';
            }
            if(updateDesc){
                eachAcc.Description='Account is noe active. Enjoy';

            }
        }
        }

    }

    public static void updateVIPFormAllContacts(List<Account> accTriggerNew, 
                                                List<Account> accTriggerOld,    
                                                map<id, account> accTriggernewMap, 
                                                map<id,account> accTriggerOldMap){
        set<id> SetAccID= new  set<id>();
        for (account eachAcc : accTriggerNew ) {
            if(eachAcc.VIP__c!=accTriggerOldMap.get(eachAcc.id).VIP__c && eachAcc.VIP__c!=null){
                SetAccID.add(eachAcc.Id);
            }  
        }
        list<contact> listContacts= [select id, name, account.id,VIP__c from contact where account.id in:SetAccID];
        for (contact eachCont : listContacts) {
            boolean accVIP= accTriggernewMap.get(eachCont.account.id).VIP__c;
            eachCont.VIP__c=accVIP;
        }
        update listContacts;
    }

    public static void duplicateAccount(List<Account> accTriggerNew 
                                        ){
     List<Account> acc = new List<Account>();
    acc = [Select id, Name from Account];
    for(Account a:accTriggerNew){
        for(Account a1:acc){
            if(a.Name==a1.Name){
                a.Name.addError('Name already Exist' );
             }
         }
     }

    }

    public static void createContacts (List<Account> accTriggerNew, 
                                        List<Account> accTriggerOld,    
                                        map<id, account> accTriggernewMap, 
                                        map<id,account> accTriggerOldMap){
        list<contact> listCont = new  list<contact>();
        for (account acc :accTriggerNew ) {
            contact cont =new contact();
            cont.LastName= acc.Name;
            cont.phone=acc.phone;
            cont.AccountId=acc.id;
            listCont.add(cont);   
        }
        if(!listCont.isEmpty()){
            insert listCont;
        }
        
    }
    public static void updateOpprtunities(list<account> accTriggerNew, 
                                        list<account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, 
                                        map<id, account> accTriggerOldMap){

        Set<Id>Accids = new Set<Id>();
        for(Account eachacc: accTriggerNew){
            Accids.add(eachacc.Id);
        }
        list<Opportunity>OppList = [Select id, name, accountId,stageName from Opportunity where accountId in:Accids and stageName!= 'Closed Won'];
        for(Opportunity eachOpp:OppList){
            eachOpp.StageName='Closed Lost';
        }
        if(!OppList.isEmpty()){
            update OppList;
        }
    }

    Public static void duplicateAccount(List<account> accTriggerNew, 
                                        list<account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, 
                                        map<id, account> accTriggerOldMap){
        List<Account> acclist = new List<account> ([select id, name from account]);
        map<string, account> accountMap= new map<string, account>();
        for (account acc : acclist) {
            accountMap.put(acc.Name,acc);
        }
        for (account acc1 : accTriggerNew) {
            if (accountMap.containsKey(acc1.Name)) {
                acc1.addError('Name already exist');
            }
        }
    }

    public static void AccountOppAndCont (List<account> accTriggerNew, 
                                            list<account> accTriggerOld, 
                                            Map<id, account> accTriggerNewMap, 
                                            map<id, account> accTriggerOldMap){
        list<contact> listCont = new List<contact>();
        List<Opportunity> listOpp = new List<Opportunity>();

        for (account acc : accTriggerNew) {
            Contact cnt =new contact();
            cnt.AccountId=acc.id;
            cnt.LastName=acc.Name;
            listCont.add(cnt);  
        }

     

        for(account acc: accTriggerNew){
            
            Opportunity opp= new Opportunity();
            opp.AccountId=acc.id;
            opp.Name= acc.Name;
            opp.StageName= 'Closed won';
            Opp.CloseDate= date.today()+15;
            listOpp.add(opp);

            
        }


        if (!listCont.isEmpty()) {
            insert listCont;
        }
        if(!listOpp.isEmpty()){
            insert listOpp;
        }
    }

} 

// for (account acc : accTriggerNew) {
//     Opportunity opp = new Opportunity();
//     opp.AccountId=acc.id; 
//     opp.Name= acc.Name;
//     opp.StageName= 'Closed won';
//     opp.CloseDate= date.today()+15;
//     listOpp.add(opp);


