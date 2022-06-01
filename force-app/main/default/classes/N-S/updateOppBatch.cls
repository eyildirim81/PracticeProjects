public class updateOppBatch implements Database.Batchable<SObject>, database.stateful{
    public integer exCount = 0;
    public integer recordCount=0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, stageName from Opportunity where StageName='Closed Lost']);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<opportunity> scope){
       if(!scope.isEmpty()){
            delete scope;
       } 
       exCount++; 
       recordCount+=scope.size();

    }
    public void finish(Database.BatchableContext bc){
        // print how many records were updated in the  entire batch execution
        System.debug('total excuted records '+ exCount);
        System.debug('total deleted records '+ recordCount);
        system.debug('done with deleting Closed Lost Opportunities');
    }
}


