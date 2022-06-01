public  class PlayingWithDates {
    public void printDateOutput(){
        date newDate=date.today();
        System.debug('Today is: '+newDate);

        date newdate2=date.newInstance(2789,11,05);
        System.debug(newDate2);

        date newdate3=date.newInstance(1459,03,04);
        System.debug(newDate3);

        integer daylnt=12;
        integer monthlnt=5;
        integer yearlnt=2022;

        date newDate4= date.newInstance(yearlnt,monthlnt,daylnt);
        System.debug(newDate4);
 
    }
}
