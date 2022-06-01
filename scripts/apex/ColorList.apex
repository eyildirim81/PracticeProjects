List<String> colorsList=new List<String>{'Blue','Red','Yellow'};
colorsList.add('White');
colorsList.add('Pink');

System.debug('our colors in the list are : ' +colorsList);

integer size=colorsList.size();
System.debug('size of the list: '+size);

Boolean checkRed=colorsList.contains('Red');
System.debug(checkRed);

string ret1=colorsList[size-1];
System.debug(ret1);

string ret2=colorsList.get(size-1);
System.debug(ret2);

string upper1= ret1.toUpperCase();
System.debug(upper1);

string upper2= colorsList[3].toLowerCase();
System.debug(upper2);

List<String> colorCodeList= new List<String>{'FF0000','FF0001','FF0002','FF0003','FF0004'};
System.debug(colorCodeList);

Boolean check3=colorCodeList.equals(colorsList);
System.debug('Is these two list same: '+check3);

List<String> newList= new List<String>();
newList.addAll(colorsList);
newList.addAll(colorCodeList);
System.debug(newList);

