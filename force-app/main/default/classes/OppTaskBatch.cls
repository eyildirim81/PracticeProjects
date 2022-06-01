
public class OppTaskBatch implements Database.Batchable<SObject>, database.stateful, Schedulable{

    public void execute(SchedulableContext sc){
        Database.executeBatch(new OppTaskBatch(),2);
            }
    public integer exCount = 0;
    public integer recordCount=0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, stageName,OwnerId,CloseDate from Opportunity where IsClosed = false and LastModifiedDate
        < LAST_N_DAYS:7]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<opportunity> scope){
      List<Task> tasklist = new List<Task>();
     for (Opportunity opp : scope){
         Task tsk = new Task();
         tsk.subject = Label.TaskSubject;
         
      if (opp.closeDate < date.today()){
         tsk.activitydate = date.today();
     }else{
      tsk.activitydate = opp.closeDate.addDays(-2);
     }
     tsk.description = label.TaskDescription;
     tsk.whatId = opp.Id;
     tsk.OwnerId = opp.OwnerId;
     tsk.status = 'In Progress';
     tasklist.add(tsk);
     }
       exCount++; 
       recordCount+=scope.size();
       if (!tasklist.isEmpty()){
           insert tasklist;
       }
    }
    public void finish(Database.BatchableContext bc){
        // print how many records were updated in the  entire batch execution
        System.debug('total excuted records '+ exCount);
        System.debug('total inserted records '+ recordCount);
        system.debug('done with inserting new tasks');
    }
}