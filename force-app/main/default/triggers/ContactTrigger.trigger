trigger ContactTrigger on Contact (after insert, after  update, after delete, after undelete)
{

    Set<Id> accountIds = new Set<Id>();
   if(trigger.isAfter){
       if(trigger.isInsert || trigger.isUndelete){
            for(contact c : trigger.new){
                if(c.AccountId != null){
                    accountIds.add(c.AccountId);
                }
            }
       }

       if(trigger.isUpdate){
           for(contact c : trigger.new){
               if(c.AccountId != trigger.oldMap.get(c.Id).AccountId){
                   accountIds.add(c.AccountId);
                   accountIds.add(trigger.oldMap.get(c.Id).AccountId);
               }
           }

       }

       if(trigger.isDelete){
         for(contact c : trigger.old){
             if(c.AccountId != null){
                accountIds.add(c.AccountId);
             }
         }
       }

       if(!accountIds.isEmpty()){
           List<Account> accList = [select id, name, Number_of_Contacts__c, (select id from contacts) from Account where id in :accountIds];

           if(!accList.isEmpty()){
               list<Account> updateAccountList = new list<Account>();
               for(Account eachAcc : accList){
                   List<Contact> contactsList = eachAcc.contacts;

                   Account acc = new Account();
                   acc.id = eachAcc.id;
                   acc.Number_of_Contacts__c = contactsList.size();
                   updateAccountList.add(acc);
               }
               if(!updateAccountList.isEmpty()){
                   update updateAccountList;
               }
           }
       }
   }


if (trigger.isbefore && trigger.isUpdate) {
    ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

   
    
}

//    if(trigger.isBefore & trigger.isUpdate){
//        System.debug('Contacts records are being updated and you are getting this message from a debug in contactTrigger');
//    }
   
   
    // if(trigger.isBefore){
    //     for (Contact eachcont : trigger.new) {
    //         Boolean updateLastName= false;
    //         if(trigger.isUpdate){
    //             if(trigger.oldMap.get(eachcont.id).lastname!= trigger.newmap.get(eachcont.id).lastName && eachcont.lastName!=null){
    //                 updateLastName=true;
    //             }
    //         }
    //         if(updateLastName){
    //             System.debug('Last Name is changed- '+trigger.oldMap.get(eachcont.id).lastname+ ' is changed to '+trigger.newmap.get(eachcont.id).lastName );
    //         }
    //     }
    // }

//     if(trigger.isbefore && trigger.isInsert){
//         system.debug('before Insert NEW LIST== '+trigger.new);
//         system.debug('before Insert OLD LIST== '+trigger.old);
//         System.debug('before insert NEW MAP== '+ trigger.newMap);
//         System.debug('before insert OLD MAP== '+ trigger.oldMap);
//    }

//    if (trigger.isAfter && trigger.isInsert) {
//         system.debug('After Insert NEW LIST== '+trigger.new);
//         system.debug('After Insert OLD LIST== '+trigger.old);
//         System.debug('After insert NEW MAP== '+ trigger.newMap);
//         System.debug('After insert OLD MAP== '+ trigger.oldMap);
//    }
   
//    if (trigger.isBefore && trigger.isUpdate) {
//         system.debug('before update NEW LIST== '+trigger.new);
//         system.debug('before update OLD LIST== '+trigger.old);
//         System.debug('before update NEW MAP== '+ trigger.newMap);
//         System.debug('before update OLD MAP== '+ trigger.oldMap);
       
//    }
//    if(trigger.isafter && trigger.isUpdate){
//         system.debug('After update NEW List== '+trigger.new);
//         system.debug('After update OLD List== '+trigger.old);
//         System.debug('After update NEW MAP== '+ trigger.newMap);
//         System.debug('After update OLD MAP== '+ trigger.oldMap);

//    }
   
   
   
   
    // if (trigger.isBefore) {
    //     system.debug('We are in BEFORE Trigger');
    //     if (trigger.isInsert) {
    //         system.debug('Before insert trigger callled');
    //     }
    //     if (trigger.isUpdate) {
    //         system.debug('Before update trigger called.');
    //     }
    // }
    // if (trigger.isAfter) {
    //     system.debug('We are in AFTER Trigger. SBNC.');
    //     if (trigger.isInsert) {
    //         system.debug('AFTER insert trigger callled');
    //     }
    //     if (trigger.isUpdate) {
    //         system.debug('AFTER update trigger called.');
    //     }
    // }
}





