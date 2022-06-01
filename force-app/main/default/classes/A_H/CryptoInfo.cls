public  class CryptoInfo {
    public static integer showPrice(string coinName ){
        Map<String,Integer> CryptoMap =new Map<String,Integer>();
        integer price;

        CryptoMap.put('BTC',35000);
        CryptoMap.put('ETH', 2500);

        price=CryptoMap.get(coinName);
        return price;

        
    }
}
