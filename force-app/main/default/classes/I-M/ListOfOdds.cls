public  class ListOfOdds {
    public ListOfOdds() {
        System.debug('Welcome to math class');

    }
    public void oddNumbers(integer x) {
        List<integer> listOdds = new List<integer>();

        for (Integer i = 1; i <= x; i++) {
            if (math.mod(i,2)!=0) {
            
                listOdds.add(i);
            }
        }
        System.debug(listOdds);
    }

}
