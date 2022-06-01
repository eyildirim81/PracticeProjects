list<case> newCases = new list<case>();
for(integer i = 0; i< 205; i++){
    case c= new case();
    c.subject = 'Tere is a bug';
    c.Description= 'Resolve it';
    c.Status= 'New';
    c.Origin = 'Web';
    newCases.add(c);
}
insert newCases;

list<case> updateCases= [ select id, subject, status from case where status= 'New'];
for(case eachCase: updateCases){
    eachCase.Status='Working';
}
update updateCases;

DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlUpdateDemo_2();
DmlDemo.dmlMultipleRecordInsert_right();
DmlDemo.dmlMultipleRecordInsert2_right();

DmlDemo2.dmlMultipleRecordUpdate_right();

List<Account> listacc= new List<Account>();
delete 


list<account> listAcc = new list<account>();
for (Integer i = 0; i < 4; i++){
    account acc2 = new account();
    acc2.Name = 'SoftInnovas 10-May v'+i;
    acc2.AccountNumber = 'asci-1'+i;
    acc2.Active__c = 'Yes';
    listAcc.add(acc2);
}
system.debug('size of list ' + listAcc.size());

if(!listAcc.isEmpty()){
    insert listAcc;
}


list<contact> cnt= new List<Contact>();

for (Integer i = 1; i < 5; i++) {

    Contact cnt1= new Contact();
    cnt1.lastname='Elif' +i;
    
    cnt.add(cnt1);
}
insert cnt;

Contact newcnt=[select lastname, id from contact where createddate=today limit 1];
newcnt.lastname='sedef';
update newcnt;

List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
    
       list<account> updateAccounts = new list<account>();

        integer counter = 0;
       for (account acc : listAcc) {
           
           if(counter < 5){
                acc.Website = 'newwebsite.com';
           } else {
               acc.name = acc.name + ' v2';
           }
           
           updateAccounts.add(acc);
           counter++;
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }



       
