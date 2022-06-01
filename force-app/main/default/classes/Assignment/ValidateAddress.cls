public  class ValidateAddress {
    public void validateHomeAddress(){
        

        string houseName='Marine Towers';
        string streetName= 'Shannont St.';
        string cityName= 'Tempe';
        string stateName= 'Arizona';
        string stateIsoCode= '1234';
        string countryName= 'Maricopa Country';
        string countryIsoCode= '4567';

        integer numberOfCharacters= streetName.length();
        System.debug('Number of characters in the street name '+numberOfCharacters);
        
        boolean containsHouseName= streetName.contains(houseName);
        System.debug('Is the street name contains house name? '+containsHouseName);

        boolean containsIsoCode= streetName.contains(stateIsoCode);
        System.debug('Is the street name contains state iso code? '+containsIsoCode);

        string lowwerCaseCityName= cityName.toLowerCase();
        System.debug(lowwerCaseCityName);
        
        string lowwerCaseStateName= stateName.toLowerCase();
        System.debug(lowwerCaseStateName);
        
        string upperCaseCountryName=countryName.toUpperCase();
        System.debug(countryName+'->'+upperCaseCountryName);

        string upperStateIsoCode=stateIsoCode.toUpperCase();
        System.debug(stateIsoCode+'->'+upperStateIsoCode);

        string upperCountryIsoCode=countryIsoCode.toUpperCase();
        System.debug(countryIsoCode+'->'+upperCountryIsoCode);
    
        string fullAddress= houseName+' '+streetName;
        System.debug('Full address is: '+fullAddress);
    }
}
