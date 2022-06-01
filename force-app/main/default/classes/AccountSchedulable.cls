public with sharing class AccountSchedulable {
    public void execute(SchedulableContext sc){
        database.executeBatch(new accountBatch());
    }
}
