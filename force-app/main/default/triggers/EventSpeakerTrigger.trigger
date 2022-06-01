trigger EventSpeakerTrigger on event_speaker__c (before insert, after insert, before update, after update) {

    if(trigger.isBefore){
        if(trigger.isInsert || trigger.isUpdate){
           eventspeakerhandler.duplicateRule(trigger.new) ;
        }
    }
    

}