map<string, country_code__c> mapCC =country_code__c.getAll();
system.debug( 'map of country code= ' + mapCC);
for(string eachcountry : mapCC.keySet()){
    system.debug( 'country : '+eachcountry+' , '+ mapCC.get(eachcountry).code_field__c);
}