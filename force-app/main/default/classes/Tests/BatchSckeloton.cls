public class BatchSckeloton implements Database.Batchable<sObject> , Database.Stateful{
    public integer count = 0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
    }
    public void execute(Database.BatchableContext bc, List<P> records){
        // process each batch of records
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }




}

@isTest
public class LeadProcessorTest {
    
        @testSetup
    static void setup() {
        List<Lead> leads = new List<Lead>();
        for(Integer counter=0 ;counter <200;counter++){
            Lead lead = new Lead();
            lead.FirstName ='FirstName';
            lead.LastName ='LastName'+counter;
            lead.Company ='demo'+counter;
            leads.add(lead);
        }        
        insert leads;
    }
    
    @isTest static void test() {
        Test.startTest();
        LeadProcessor leadProcessor = new LeadProcessor();
        Id batchId = Database.executeBatch(leadProcessor);
        Test.stopTest();   
    }

}
