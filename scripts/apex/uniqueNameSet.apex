Set<String> uniqueNameSet= new Set<String>{'Tom', 'Jerry'};
System.debug(uniqueNameSet);
uniqueNameSet.add('Nancy');
uniqueNameSet.add('Timmy');
Boolean check1=uniqueNameSet.contains('Elif');
system.debug(' Is your name in this set: '+check1);
Boolean check2= uniqueNameSet.isEmpty();
System.debug(' Is this set empty: '+check2);
uniqueNameSet.clear();
system.debug(uniqueNameSet);
Boolean check3= uniqueNameSet.isEmpty();
System.debug('Is the set empty now: '+check3);

// PART E

Map<Integer,String> zipCodeToCityMap =new Map<Integer,String>();
zipCodeToCityMap.put(100101,'New Delhi');
zipCodeToCityMap.put(101234,'Mumbai' );
zipCodeToCityMap.put(569023,'New York City' );
System.debug(zipCodeToCityMap);

Boolean check4= zipCodeToCityMap.containsKey(204101);
system.debug('is this map contains 204101: '+check4);

List<String> cityMap = zipCodeToCityMap.values();

for( String eachValue: cityMap){
    string printStrings= eachValue;
    
     string printValues= zipCodeToCityMap.get(eachValue);
        System.debug(printValues);
}

System.debug(cityMap);

set< Integer> zipMap= zipCodeToCityMap.keySet();
System.debug(zipMap);
