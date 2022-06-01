public  class primitiveDataTypeDemo {
    public void printBasicDataType(){
    string batchName = 'Falcons';
    integer totalCandidates = 40 ;
    boolean isAdminComplated = true;
    system.debug('Batch Name is '+ batchName);
    system.debug('Total # of candidates: '+ totalCandidates);
    system.debug('admin completed? ' + isAdminComplated);
    decimal decValue = 26.7;
    long longValue = 12345678903456L;
    system.debug('Decimal: '+decValue); 
    system.debug('long: '+longValue);
    object obj= 'This is a string';
    object obj2 = 2;
    ID id1 = '0018c00002EwetyAAB';
    system.debug('object 1: '+obj);
    system.debug('object 2: '+obj2);
    system.debug('ID number is: '+id1);
   }
}
