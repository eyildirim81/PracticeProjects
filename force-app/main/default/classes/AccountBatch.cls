public class AccountBatch implements Database.Batchable<SObject>, database.stateful{
    public integer count = 0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, description, Active__c from account]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        List<Account> updateAccounts = new List<Account>();
        for (account acc : scope) {
            if(acc.Active__c!='No'){
                acc.Description += '...updated via BATCH apex!';
                updateAccounts.add(acc);
                count++;
            }
            
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }
    }
    public void finish(Database.BatchableContext bc){
        // print how many records were updated in the  entire batch execution
        System.debug('total updated records '+ count);
        system.debug('done with updating ALL the ACCOUNTS');
    }
}
