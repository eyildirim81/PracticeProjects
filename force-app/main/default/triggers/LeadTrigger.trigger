trigger LeadTrigger on LEAD (before insert, before update, after insert, after update) {
   if(trigger.isBefore && trigger.isInsert){
       for (lead eachLead : trigger.new) {
          if(eachLead.LeadSource=='Web') {
              System.debug('Rating should be Cold');
          }else{
              System.debug('Rating should be hot');
          }
       }
   }
   
   
   
   
   
   
    // if(trigger.isBefore && trigger.isInsert){
    //     for (lead eachLead : trigger.new) {
    //         System.debug(eachLead.firstname+ ' is created');
    //     }
    // }
}