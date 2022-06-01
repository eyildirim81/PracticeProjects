public  class homework1 {
    public void checkKeyword(){
        string checkHost='Welcome to the Sleaforce world, apex is host in this world.';
        boolean ch=  checkHost.contains('HOST');
        System.debug('exist HOST: '+ch);

        boolean ch2 =checkHost.containsIgnoreCase('HOST');
        System.debug('exist HOST: '+ch2);

        string string1= 'My favorite part is apex';
        string string2= 'MY FAVORITE PART IS APEX';
        boolean checkEquals=string2.equals(string1);
        System.debug('check equals: '+checkEquals);

        date dateOfJoin= date.newInstance(2011,6,21);
        date today=date.today();
        integer daysOfExperience= dateOfJoin.daysBetween(today);
        System.debug('Experience of this employee is: '+daysOfExperience);

        String s = 'hello maximillian';
        String s2 = s.capitalize();
        System.debug(s2);
    }
}
