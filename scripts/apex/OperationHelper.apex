// kucuk sayiyi bulma
List<Decimal> l6=new list<Decimal>{7.5,1.2,3.4,2.5};
system.debug(OperationHelper.lowest(l6));

// buyuk sayiyi bulma
List<Decimal> l5=new list<Decimal>{1.2,3.4,2.5};
system.debug(OperationHelper.highest(l5));

// Average bulma
List<Decimal> l3=new list<Decimal>{1.2,3.4,2.5};
system.debug(OperationHelper.average(l3));

List<Decimal> l4=new list<decimal>();
system.debug(OperationHelper.average(l4));
// toplam bulma
List<Decimal> listDecimal=new list<Decimal>{1.2,3.4,2.5};
system.debug(OperationHelper.Sum(listDecimal));

List<Decimal> listDecimal2=new list<decimal>();
system.debug(OperationHelper.Sum(listDecimal2));


OperationHelper  op= new OperationHelper();
decimal largestNumber= op.largestOutOfTwoNumbers(13, 23);
System.debug(largestNumber);
decimal largestNumber1= op.largestOutOfTwoNumbers(43, 23);
System.debug(largestNumber1);
decimal largestNumber2= op.largestOutOfTwoNumbers(13, 13);
System.debug(largestNumber2);

OperationHelper op1=new OperationHelper();
Decimal smallestNumber1= op1.smallestOutOfThreeNumbers(3, 6, 78);
system.debug(smallestNumber1);

OperationHelper op2=new OperationHelper();
Decimal smallestNumber2= op2.smallestOutOfThreeNumbers(7, 56, 0);
system.debug(smallestNumber2);

OperationHelper op3=new OperationHelper();
Decimal smallestNumber3= op3.smallestOutOfThreeNumbers(7, 56, 7);
system.debug(smallestNumber3);