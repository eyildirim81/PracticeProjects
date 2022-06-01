public  class Caulculator {
    public static void welcomeMessage(){
        System.debug('Welcome to apex Calc');
    }
    public static void printNewMessage(string msg){
        System.debug(msg);
    }
    public static void printNewMessage2(string msg, date dt){
        System.debug(msg);
        System.debug(dt);
    }
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
        
    }
    //add method with 3 params
    public static integer add(integer a, integer b, integer c){
        return a+b+c;
    }
    public Decimal dynamicCalulationMethod( decimal x, decimal y, string z){

    decimal result;
    switch on z {
        when 'Addition' {
            result= x + y;
        }
        when 'Substruction' {
            result= x - y;
        }
        when 'Multiplication' {
            result= x * y;
        }
        when 'Division' {
            result= x / y;
        }
        when else {
           System.debug('Gecersiz islem') ;
        }
    }return result;    
    }

    public static integer add(List<integer> intList) {
        integer sum = 0;
        //10,15,20
        // sum = sum + 10;
        // sum = sum + 15;
        // sum = sum + 20;
        for (integer eachInt : intList) {
            system.debug('eachInt - ' + eachInt);
            sum += eachInt;
            system.debug('sum...' + sum);
        }
        return sum;
    }

    
   

}
