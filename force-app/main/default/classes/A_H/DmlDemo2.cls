public  class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right() {
        List<Account> listAcc = [select id, name, Description from account order by createddate desc limit 150];
         list <account> updateAccounts = new List<Account>();

         for (account acc : listAcc) {
             acc.name+= ' VB';
             acc.Description= 'Update via bulk DML';
             updateAccounts.add(acc);
         }
         if (!updateAccounts.isEmpty()){
             update updateAccounts;
         }

    }
}
