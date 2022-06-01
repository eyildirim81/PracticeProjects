MyCity info=new MyCity();
info.printString(6, 'Hello World');

info.favoriteCafe='PHONICIA CAFE';
info.favoritePark= 'YELLOW STONE';
info.favoriteMall= 'CHANDLER MALL';
info.favoriteStore= 'BARNS AND NOBEL';

string city= info.myFavariteLocations('TEMPE');
System.debug(city);

info.dateMethod();
info.stringMethod();
info.cityInformation();