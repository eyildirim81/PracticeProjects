map<string,decimal> currISOCodeAndExchangeRateMap = new map<string,decimal>();
currISOCodeAndExchangeRateMap.put('AUD',0.73);
currISOCodeAndExchangeRateMap.put('CAD',0.78);
currISOCodeAndExchangeRateMap.put('EUR',1.13);
currISOCodeAndExchangeRateMap.put('NZD',0.68);
currISOCodeAndExchangeRateMap.put('INR',0.013);

decimal AUD= currISOCodeAndExchangeRateMap.get('AUD');
System.debug( 'currency rate for AUD is= '+AUD);

Boolean check= currISOCodeAndExchangeRateMap.containsKey('SAD');
System.debug(check);

set<string> isoBigOne= new set<string>();
set<string> isoSmallOne= new set<string>();

for( string eachKey :currISOCodeAndExchangeRateMap.keySet() ){
    decimal eachRate= currISOCodeAndExchangeRateMap.get(eachKey);
    

    if(eachRate>=1){
        isoBigOne.add(eachKey);
        
    }else{
        isoSmallOne.add(eachKey);
    }
}
System.debug(isoBigOne+ ' in one variable ');
System.debug(isoSmallOne+ 'In another variable');





