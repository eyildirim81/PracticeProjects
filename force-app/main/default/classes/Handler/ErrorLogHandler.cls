public with sharing class ErrorLogHandler {
    public static void createErrorLog( string processName, string Details) {
        Error_Log__c newError = new Error_Log__c();
        newError.Process_Name__c= processName;
        newError.Log_Details__c = Details;
        newError.Log_Date_Time__c = Datetime.now();
        insert newError;


    }
}
