public class AccountManager {
    public static void updateDesc(){
        List<Account> listacc= [select id, name,CreatedDate from account order by createddate DESC LIMIT 5 ];
        List<Account> newacc= new List<Account>();
        for (account eachacc : listacc) {
            eachacc.Description=eachacc.Name+'__' +eachacc.CreatedDate;
            newacc.add(eachacc);
        }
        update newacc;
    }


}
