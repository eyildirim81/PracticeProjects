trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    System.debug('before insert case');

    if(trigger.isupdate){
        CaseTriggerHandler.countTriggerExecuting++;
        System.debug('# of times trihher executed: '+ CaseTriggerHandler.countTriggerExecuting);

        CaseTriggerHandler.countRecordsUpdated += trigger.size;
        system.debug('# of recored updated: '+ CaseTriggerHandler.countRecordsUpdated);

    }
    // system.debug('we are in triggers');
    // if (trigger.isAfter) {
    //     system.debug('We are in the after triggers');  

    //     if ( trigger.isUpdate) {
    //         system.debug('We are in the after-Update triggers');   
    //     }
    //     if (trigger.isInsert) {
    //         system.debug('We are in the after-Insert triggers');  
    //     }


    // }
    // if (trigger.isBefore) {
    //     system.debug('We are in the before triggers');
           
    //     if ( trigger.isUpdate) {
    //         system.debug('We are in the before-Update triggers');   
    //     }

    //     if (trigger.isInsert) {
    //         system.debug('We are in the before-Insert triggers');  
    //     }
        
    // }


}