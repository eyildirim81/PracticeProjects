public  class datetimeMethodsDemo {
    // 1.create one method calculateAgeInMonths()
    public void calculateAgeInMonths(){
        // 1.1 calculate age in months
        // hint we need two days-birthdate and today's date
        // today's date
        Date todayDate= date.today();
        // birthday variable
        date birthDay= date.newInstance(1981, 8, 14);
        // calculate month difference in betwee two dates
        Integer ageInMonths= birthDay.monthsBetween(todayDate);
        System.debug('My age in months: '+ageInMonths);

        Integer ageInDays= birthDay.daysBetween(todaydate);
        System.debug('My age in days: '+ageInDays);

    }

    public void printSubscriptionEndDate(){
        date startDate= date.today();
        date endDate= startDate.addDays(1000);
        System.debug('End date is: '+endDate);

        // also print year and ,month of end date

        integer endDateYear= endDate.year();
        System.debug('Subscription end date year is: '+ endDateYear);

        integer endDateMonth= endDate.month();
        System.debug('Subscription end date month is: '+ endDateMonth);
    }
    public void printOfferEndDateTime(){
        datetime dtnow= datetime.now();
        datetime dtOfferEnd= dtnow.addHours(51);
        System.debug('The offer will end: '+dtOfferEnd);
    }
}
