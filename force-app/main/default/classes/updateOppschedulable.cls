
public with sharing class updateOppschedulable implements Schedulable {

    public void execute(SchedulableContext sc){
    Database.executeBatch(new updateOppBatch());
        }
}