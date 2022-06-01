public  class AccountHandlerInfo {
    public  static List<Account> insertNewAccount(list<string> accName ) {
        list<account> accList= new List<Account>();
        if (!accName.isempty()) {
            
            for (string eachstring : accName) {
                account newaccount=new Account();
                newaccount.name=eachstring;
                acclist.add(newaccount);
              
            }
            
        }else{
            System.debug('please add a valid information');
        }
        insert accList;
        return accList;
       
            
        } 
       
        
            
    
}
