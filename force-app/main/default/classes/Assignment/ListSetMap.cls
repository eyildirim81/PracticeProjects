public  class ListSetMap {
     public static void practiceOne () {
         List<string> listOfCity = new List<string>{'Ankara','Istanbul','London','Paris','New York','Tokyo','Antalya','London','Paris','New York','Tokyo'};
        integer size= listOfCity.size();
        System.debug('size of the list is: '+size);

        Boolean check1= listOfCity.isEmpty();
        System.debug('is this list empty: '+check1 );

        string seventElement= listOfCity.get(6);
        System.debug('seventh element of this list is: '+seventElement);

       

        Set<String> setOfCity = new set<String>();
        setOfCity.addAll(listOfCity);
        System.debug('set of this list is: '+setOfCity);
    }

    public static void practiceTwo(list<integer> setIntegers) {
    
        
        set<Integer> oddNumbers= new set<integer>();
        set<integer> evenNumbers= new set<integer>();
    
        for (integer eachNumber : setIntegers) {
            integer x=Math.mod(eachNumber, 2);

            if (x==0) {
                evenNumbers.add(eachNumber);  
            } else {
                oddNumbers.add(eachNumber);  
            }
        }
    system.debug('Even Numbers: '+evenNumbers);
    System.debug('Odd Numbers: '+oddNumbers);
    }

}


