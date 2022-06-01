public  class PrimitiveDataTypeDemo2 {
    public void printNewDateTime(){
        date newDate=date.today();
        time newTime = time.newInstance(23,23,23,23);
        datetime dt = datetime.newInstance(newDate,newTime);
        System.debug('dt is '+dt);

        // datetime from year month day
        datetime dt2 =datetime.newInstance(2025, 1, 9);
        System.debug(dt2);

        // datetime from year month day hour minute second
        datetime dt3 = datetime.newInstance(2022,02,20,15,15,15);
        System.debug(dt3);

        // current datetime
        datetime currentDT =datetime.now();
        System.debug('current DT: '+currentDT);

        Datetime dt6= Datetime.newInstance(0);
        System.debug('dt6: '+dt6);

        Datetime dt6_1= Datetime.newInstance(5000L);
        System.debug('dt6_1: '+dt6_1);

        long longtime= 1341828183000L;
        Datetime dt7= Datetime.newInstance(longtime);
        System.debug('dt7: '+dt7);
    }

    public void printNewTime(){
        Time  myTime = Time.newInstance(18,20,2,30);
        System.debug('the time is: '+ myTime);
    }

    public void printNewDate(){
        System.debug('create new date instance');
        Date newDate= Date.newInstance(1995,5,15);
        System.debug('new date: '+newDate);

        Date newDate2 =Date.newInstance(2022,02,02);
        System.debug('new date2: '+newDate2);

        Date todayDate =  date.today();
        System.debug('today date is '+todayDate);


    }
}
