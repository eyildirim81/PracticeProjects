public  class MyCity {
    public void cityInformation(){
        string name= 'Jennifer';
        string lastName= 'Shin';
        string fullName= name+ ' ' +lastName;
        system.debug(fullName);
    }
    public void stringMethod(){
        string letter='I am a salesforce developer';
        boolean check=letter.contains('force');
        System.debug('Is my letter contain force of word: '+check);

        integer check2= letter.length();
        system.debug('How many character are my letter has: '+ check2);
        
        string check3= letter.toUpperCase();
        system.debug('All letters are upper case: '+check3);
    }
    public void dateMethod(){
        date currentDate=date.today();
        system.debug('Today is: '+currentDate);

        datetime currentTime= Datetime.now();
        system.debug('Bugunun tarihi ve saati: '+currentTime);

        Datetime after50Hours= currentTime.addHours(50);
        system.debug(after50Hours);

    }

    public string favoriteCafe;
    public string favoritePark;
    public string favoriteMall;
    public string favoriteStore;
    public string myfavoriteCity;

    public string myFavariteLocations( string myCurrentCity){
        
        System.debug('The most beautiful Cafe in my city is '+favoriteCafe+ ', most beautiful park is '+favoritePark+ ' , most beautiful mall is '+favoriteMall+ ' , most beautiful store is '+favoriteStore+ ' , ');

            return myCurrentCity; 
    }

    public void printString(integer x, string msg){
        for (Integer i = 1; i < x; i++) {
            System.debug(msg+ ' '+i);
            
        }
    }
}
