public with sharing class ContactTriggerHandler {
    public static void contactUpdateValidation1(list<contact> cntTriggerNew,
                                                List<contact> cntTriggerOld,
                                                map<id,contact> cntTriggerNewMap,
                                                map<id,contact> cntTriggerOldMap) {
        for (contact eachcnt : cntTriggerNew) {
            if(eachcnt.LeadSource=='Partner Referral'){
                eachcnt.addError('Cannot update\'partner referral\' contacts');
            }
            
        }
    }
    public static void contactUpdateValidation2(list<contact> cntTriggerNew,
                                            List<contact> cntTriggerOld,
                                            map<id,contact> cntTriggerNewMap,
                                            map<id,contact> cntTriggerOldMap){
        for (contact eachcnt : cntTriggerNew) {
            if(eachcnt.LeadSource!=cntTriggerOldMap.get(eachcnt.id).LeadSource){
                string customvalidation = system.label.contactValidation2;
                eachcnt.LeadSource.addError(customvalidation);
            }
        }
    }
    public static void updateContacts(List<Contact> TriggerNew, 
                                        list<Contact> TriggerOld, 
                                        map<id, Contact> TriggerOldMap, 
                                        map<id, Contact > TriggerNewMap){

        set<id> AccIds=new set<id>();

        for(contact eachCnt:TriggerNew){

            AccIds.add(eachCnt.AccountId);
        }

        list<account> Listacc=[select id, name,phone from account where id in: AccIds];

        map<id,account> mapAcc=new map<id, account>();

        for (account acc : Listacc) {

            mapAcc.put(acc.id, acc);
    
        }

        for(contact cnt:TriggerNew){

            cnt.phone=mapAcc.get(cnt.accountid).phone;
        }

    }

    
}
