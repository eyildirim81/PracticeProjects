trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    // if(trigger.isAfter){
    //     if(trigger.isInsert){
    //         AccountTriggerHandler.createContacts(Trigger.New, 
    //                                              Trigger.Old, 
    //                                              Trigger.newMap, 
    //                                              Trigger.OldMap);
    //     }
    // }

    // if(trigger.isAfter && trigger.isUpdate){
    //     AccountTriggerHandler.updateOpprtunities(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }

    // if (trigger.isBefore && trigger.isInsert) {
    //     AccountTriggerHandler.duplicateAccount(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     AccountTriggerHandler.AccountOppAndCont(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }



    //    if (trigger.isBefore){
//        System.debug('before insert/update trigger called');
//        AccountTriggerHandler.updateAccountDescription(Trigger.New, 
//                                                         Trigger.Old, 
//                                                         Trigger.newMap, 
//                                                         Trigger.OldMap);
//          System.debug(' insert/update trigger end');
//    }

//    if (trigger.isAfter){
//        if(trigger.isUpdate){
//            AccountTriggerHandler.updateVIPFormAllContacts(Trigger.New, 
//                                                             Trigger.Old, 
//                                                             Trigger.newMap, 
//                                                             Trigger.OldMap);
//        }
//    }

//    if( trigger.isBefore){
//         if(trigger.isinsert && trigger.isupdate){
//             AccountTriggerHandler.duplicateAccount(Trigger.New
//             );
//         }
//    }

  

   
    
//     if(trigger.isBefore ){
//         system.debug('before insert / update trigger on Account object');
//         for (account eachAcc : trigger.new) {
//             boolean updateDesc= false;
//             if(trigger.isInsert && eachAcc.active__c=='Yes'){
//                 updateDesc=true;
//                 // eachAcc.Description='Account is now active. Please enjoy!';
//             }
//             if(trigger.isupdate ){
//                 // check if active is updated to yes
//                 if(eachAcc.active__c=='Yes' && trigger.oldMap.get(eachAcc.id).active__c!=trigger.newMap.get(eachAcc.id).active__c ){
//                     updateDesc=true;
//                     // eachAcc.Description='Account is noe active. Enjoy';
//             }
//             if(updateDesc){
//                 eachAcc.Description='Account is noe active. Enjoy';

//             }
//         }
       
//     }
// }

   


    // if(trigger.isAfter && trigger.isUpdate){
        
    //     integer countsUpdates=0;

    //     for (id  eachId : trigger.newmap.keySet()) {

    //         string oldWeb= trigger.oldMap.get(eachId).Website;
    //         string newWeb= trigger.newMap.get(eachId).website;

    //         if(oldWeb!=newWeb){
    //             system.debug('for the account= ' +trigger.newMap.get(eachId) + 'new website is = '+ newWeb );
    //             countsUpdates++;
    //         }
    //     }
    // }



    // map<id, account> trgNewMap = trigger.newMap;
    // map<id, account> trgOldMap = trigger.oldMap;

    // if(trigger.isBefore &&  trigger.isInsert){
    //     system.debug('=======BEFORE INSERT=========');
    //     system.debug('Before insert OLD MAP = ' + trgOldMap);
    //     system.debug('Before insert NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isInsert){
    //     system.debug('=======AFTER INSERT=========');
    //     system.debug('AFter insert OLD MAP = ' + trgOldMap);
    //     system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    // }

    // if(trigger.isBefore &&  trigger.isUpdate){
    //     system.debug('=======BEFORE UPDATE=========');
    //     system.debug('Before update OLD MAP = ' + trgOldMap);
    //     system.debug('Before update NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isUpdate){
    //     system.debug('=======AFTER UPDATE=========');
    //     system.debug('AFter update OLD MAP = ' + trgOldMap);
    //     system.debug('AFter update NEW MAP = ' + trgNEWMap);
    // }

    if(trigger.isBefore && trigger.isInsert){

        account acc = new Account();
        acc.name = 'New Account for new contact';
        contact cnt= new Contact();
        cnt.AccountId= acc.id;
        cnt.LastName=acc.Name;

    }
    
    
    // set<id> accId= new set<id>();
    // if (trigger.isAfter && trigger.isInsert){
    //     for (account eachAcc : trigger.new) {
    //         accId.add(eachAcc.Id);
            
    //     }

    // }


    //    if(trigger.isafter){
//        if (trigger.isUpdate){

//         List<Account> oldAccount= trigger.old;
//         List<Account> newAccount= trigger.new;

//            for (account oldacc : trigger.old) {
//                system.debug('old acc name= '+ oldacc.name+ ' old acc id= '+oldacc.id);
//            }
//            for (account newacc : trigger.new) {
//                System.debug('new acc name= '+ newacc.name+ '  new acc id= '+newacc.id);
//            }
//        }
//    }
   
   
    // if (trigger.isbefore && trigger.isInsert){
    //     system.debug('trigger.old before  insert= '+trigger.old); //it will null
    // }
    // if (trigger.isAfter && trigger.isInsert){
    //     system.debug('trigger.old after  insert= '+trigger.old); //it will null
    // }

    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    */
}