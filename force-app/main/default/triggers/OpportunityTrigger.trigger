trigger OpportunityTrigger on OPPORTUNITY (before insert, before update, after insert, after update) {

    if(trigger.isbefore && trigger.isupdate){
        for(Opportunity eachOpp: trigger.new){
            if(eachOpp.closeDate<trigger.OldMap.get(eachOpp.id).closeDate){
                eachOpp.closeDate.addError('Close Date can not be update to less that what already provided');
            }
        }
        
       

    }

    // if(trigger.isBefore && trigger.isUpdate){
    //     for (opportunity eachOpp : trigger.new) {
    //         if(eachOpp.Amount!=trigger.oldMap.get(eachOpp.Id).Amount &&
    //             eachOpp.StageName!=trigger.oldMap.get(eachOpp.id).StageName){
    //                 eachOpp.Description='Stage Updated: Old Stage=>'+trigger.oldMap.get(eachOpp.id).StageName+ ' and New Stage: '+eachOpp.StageName +'& Amount updated: Old Amount=> '+trigger.oldMap.get(eachOpp.Id).Amount;
    //             }else
    //         if(eachOpp.StageName!=trigger.oldMap.get(eachOpp.id).StageName){
    //             eachOpp.Description='Stage Updated: Old Stage=>'+trigger.oldMap.get(eachOpp.id).StageName+ ' and New Stage: '+eachOpp.StageName;
    //         }else
    //         if(eachOpp.Amount!=trigger.oldMap.get(eachOpp.id).Amount){
    //             eachOpp.Description='& Amount updated: Old Amount=> '+trigger.oldMap.get(eachOpp.Id).Amount;
    //         }else
    //         if (eachOpp.Amount==trigger.oldMap.get(eachOpp.Id).Amount &&
    //         eachOpp.StageName==trigger.oldMap.get(eachOpp.id).StageName) {
    //             eachOpp.Description='REcord updated but satge and amount not updated';
    //         }

    //     }
    // }


//     if(trigger.isbefore && trigger.isUpdate){ 
//         for (opportunity eachOpp : trigger.new) {
//             system.debug('new opportunity name is: '+ eachOpp.name +' and new Amount is: ' +eachOpp.Amount);
//             system.debug('old opportunity name is: '+ trigger.oldMap.get(eachOpp.id).name +' and old Amount is: ' +trigger.oldMap.get(eachOpp.id).Amount);
//         }
//     }
 }