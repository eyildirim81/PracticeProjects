public  class OperationHelper {
    public decimal largestOutOfTwoNumbers(decimal x, decimal y){
        decimal largestNumber;
        if(x>y){
            largestNumber=x;
           
        }else if (y>x){
            largestNumber=y;
            
        }
       return largestNumber ;
    }

    public decimal smallestOutOfThreeNumbers( decimal x, decimal y, decimal z){
        decimal smallestNumber;

        if(x==y && y==z){
            System.debug('sayilar esittir');
        }else if (x<=y && x<=z){
            smallestNumber=x;

        }else if (y<=x && y<=z) {
            smallestNumber=y;
            
        }else if(z<=x&& z<=y){
            smallestNumber=z;
        }else{
            System.debug('not small');
        }

        return smallestNumber;
    }
    // toplami bulma

    public static decimal Sum (List<decimal> sumList){
        decimal total=0;
        if(sumList.size()>0){
            for (decimal eachValue : sumList) {
                total+=eachValue;
                // total=total+eachValue;
                
            }
        }else {
            total=null;
            System.debug('Please provide values to do the operation');
        }


        return total;
    }
    // ortalamayi bulma
    public static decimal average (list<decimal> averageList){
        decimal a1=0;
        if (!averageList.isEmpty()){
            decimal a=OperationHelper.Sum(averageList);
            integer b=averageList.size();
            a1=a/b;

        }else {
            a1=null;
            System.debug('Please provide values to do the operation');
        }
        return a1;
    }
    // buyuk sayiyi bulma
    public static decimal highest (list<decimal> highestList){
        decimal h1=0;
        if (!highestList.isEmpty()){
            highestList.sort();
            h1=highestList.get(highestList.size()-1);
            

        }else {
            h1=null;
            System.debug('Please provide values to do the operation');
        }
        return h1;
    }
    // kucuk sayiyi bulma
    public static decimal lowest (list<decimal> lowestList){
        decimal low1=0;
        if (!lowestList.isEmpty()){
            lowestList.sort();
            low1=lowestList.get(0);
            

        }else {
            low1=null;
            System.debug('Please provide values to do the operation');
        }
        return low1;
    }
}