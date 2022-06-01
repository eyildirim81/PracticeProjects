public class LoopDemo {
   public void print_int_while(){
       integer count = 1;
       while ( count <= 25){
           System.debug(count);
           count++;
       }
   }

   public void print_N_numbers(integer n){
    //    for initialize   condition      increment
    for ( integer i=0;         i<n;        i++ ){
        // print 'i'...
        System.debug(i);
    }
   }

   public void print_N_numbers2(integer n){
       string s='';
    for ( integer i=0;         i<n;        i++ ){
        // System.debug(i);
        s += string.valueOf(i + ',');
    }
    System.debug('print 1 to N: '+s);
   }

   public void print_sum_nN_numbers(integer n){
       integer sum =0;
       for (Integer i = 1; i <=n; i++) {
        //    integer tempNUmber=i;
        // //    0,1,2
        // sum=sum+tempNUmber;
        // // sum=0+0
        // // sum = 0+1=1
        // // sum =1 +2=3
        // sum=sum+i
        sum+=i;
       }
       System.debug(sum);
   }

   public void print_N_Odd_numbers( integer startInt, integer endInt){
       
       for (Integer i = startInt; i <= endInt; i++) {
           integer modI= math.mod(i,2);
           if (modI==1)           System.debug(i);
           
       }
   }

   public string print_N_Odd_numbers2( integer startInt, integer endInt){
    string s='';
    for (Integer i = startInt; i <= endInt; i++) {
        integer modI= math.mod(i,2);
        if (modI==1) 
        s+= string.valueOf(i+',');
        System.debug(s);
        
    }
    return s;
}
} 
