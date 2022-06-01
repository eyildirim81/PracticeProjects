public  class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription= 'learning strings methods in apex language';

        integer lengthOfStr= sessionDescription.length();
        system.debug('length of string is: '+ lengthOfStr);

        string sessionDescriptionInCaps= sessionDescription.toUpperCase();
        system.debug('in caps= '+sessionDescriptionInCaps);

        // contains 'apex'
        boolean containsApex= sessionDescription.contains('apex');
        system.debug('has apex? '+containsApex);

        // check salesforce
        boolean containSalesforce= sessionDescription.contains('salesforce');
        system.debug('has salesforce? '+containSalesforce);

        // check apex ignoring case
        boolean containAPEX2= sessionDescription.containsIgnoreCase('APEX');
        system.debug('has APEX? '+containAPEX2);
        // equals check if two string are same or not
        string apexx='apex';
        string ap= 'APEXX';
        boolean apexCheck= apexx.equals(ap);
        System.debug('apex check '+apexCheck);

    }
}
