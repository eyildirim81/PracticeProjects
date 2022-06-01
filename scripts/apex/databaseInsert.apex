


        try {
            //This will cause a query exception to fire as more than one account will be returned
            //We can then see our debug statement for queries in the debug logs
            Account accountsToUpdate = [SELECT Id, Rating FROM Account];
                           
            //This does not get executed as the line above causes an exception
            System.debug('Line of code after exception');
        }catch (QueryException e) {
              //If a query exception occurs it will go here
              System.debug('Query Exception hit');
        }catch(DmlException e){
    	      //If a DML exception occurs it will go to this statement
      	      System.debug('DmlException hit');
        }catch (Exception e) {
       	      //Any other exceptions that occur will go here
              System.debug('Exception hit');
        } finally {
      	       //Clean up
        }


try{
    integer A= 3;
    String B= '4';
    integer sum = A+B;

    // integer A1= 3;
    // integer B1 =5;
    // integer sum1 = A1+B1;
}catch (Exception Ex){
    system.debug('Something went wrong') ; 
}finally{
    
}

system.debug('Apex is simple, do not make it complecated.' );


try{
    account acc1 = new account();
    acc1.name = 'SI Test';
    acc1.Industry = 'Energy';
    acc1.active__c= 'No';

    account acc2 = new account();
    acc1.name = 'UI Test';
    acc1.Industry = 'Energy';
    acc1.active__c= 'Yes';
    // required field is missing
    Account acc12x = new account();
    Account acc12y = new account();
    Account acc12z = new account();

    list<account> listacc = new List<Account>{acc1,acc2,acc12x,acc12y,acc12z};

    list<database.SaveResult> results = database.insert(listacc, false);

    // iterate saveresult array
    for(Database.SaveResult eachResult : results){
        if(eachResult.isSuccess()){
            System.debug('account successfuly inserted, Account Id is: '+ eachResult.getId());
        }else{
            System.debug('Errors: '+eachResult.getErrors());
        }
    }
}catch (Exception ex){
    system.debug('There is an error in code');
}

    
