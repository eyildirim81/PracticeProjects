@isTest

public class CalculatorTest {
    @isTest

    private static void testMessage(){
        Caulculator.welcomeMessage();
        Caulculator.printNewMessage('this is from a message from test');
        Caulculator.printNewMessage2('msg', date.today());
    }
    @isTest 
        private static void addTest(){
            integer i=10;
            integer j= 15;
            
            Integer calAdd  = caulculator.add(i,j);
            System.assertEquals(25,calAdd);
        }
    @isTest
        private static void addTest2(){
            integer calAdd =Caulculator.add(10,15,20);
            System.assertEquals(45, calAdd);
        }

        @isTest
    public static void addTest3() {
        list<integer> listInt = new list<integer>{15,15,15};
        integer calcAdd = Caulculator.add(listInt);
        system.assertEquals(45, calcAdd);
    }
    
}
