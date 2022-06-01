integer sum1 =Caulculator.add(15, 15);
system.debug(sum1);

Caulculator calc= new Caulculator();
integer addInteger = calc.add(10,15);
system.debug( 'Sum = '+ addInteger);

Integer sum1 = calc.add(200, 300);
system.debug( 'sum= '+ sum1);

integer finalSum = calc.add(addInteger,sum1);
System.debug('Sum= '+finalSum);


calc.printNewMessage2('this is a message ', date.today());
calc.welcomeMessage();
calc.printNewMessage('this is new age calc.');


Caulculator swt= new Caulculator();
decimal result1 =swt.dynamicCalulationMethod(6, 8, 'Addition');
System.debug(result1);

Caulculator sw2= new Caulculator();
decimal result2 =sw2.dynamicCalulationMethod(5, 10, 'Substruction');
System.debug(result2);

Caulculator sw3= new Caulculator();
decimal result3 =sw3.dynamicCalulationMethod(8, 8, 'Multiplication');
System.debug(result3);

Caulculator sw4= new Caulculator();
decimal result4 =sw4.dynamicCalulationMethod(6, 8, 'Division');
System.debug(result4);

Caulculator sw5= new Caulculator();
decimal result5 =sw5.dynamicCalulationMethod(6, 8, 'null');
System.debug(result5);