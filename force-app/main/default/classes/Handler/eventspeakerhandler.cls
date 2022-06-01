public with sharing class eventspeakerhandler {
    public static void  duplicateRule(list<event_speaker__c>triggernew) {
        set<Id> speakerids= new set<Id> ();
    set<Id> eventsIds = new set<Id>();
    map<id,event_speaker__c> eventSpeakerMap = new map<id,event_speaker__c>();


    for (event_speaker__c eachevent : triggernew) {
        speakerids.add(eachevent.speaker__c);
        eventsIds.add(eachevent.event__c);
        string myKey = string.valueOf(eachevent.speaker__c)+ string.ValueOf(eachevent.event__c);
        eventSpeakerMap.put(myKey, eachevent);
    }

    list<event_speaker__c> listSpeaker =[select id, speaker__c 
                                        from event_speaker__c 
                                        where speaker__c in:speakerIds
                                        and event__c in:eventsIds];

   

    

    for ( event_speaker__c acc : listSpeaker) {

        string myKey2 = string.valueOf(acc.speaker__c)+ string.ValueOf(acc.event__c);
        event_speaker__c duplicate = eventSpeakerMap.get(myKey2);

        if (duplicate!=null) {
            acc.speaker__c.addError('speaker already exist');
            
        }
        
    }

    }
}
