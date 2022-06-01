public  class MathPractice {
    public decimal practiceOne(decimal L, decimal W){
        decimal perimeter= L+W;
        return Perimeter;

    }
    public decimal practiceTwo(decimal boy, decimal kilo){
        decimal vucutKitleIndeksi= kilo/(boy*boy);
            return vucutKitleIndeksi;
    }
    public decimal practiceThree (decimal num1, decimal num2){
        decimal ortalama= (num1+ num2)/2;
            return ortalama;
    }
    public decimal practiceFour(decimal cost){
        decimal bonus;
            if (cost<= 0){
                system.debug('Hatali bir deger girdiniz');
            }else if (cost <50 && cost>=0){
                System.debug( 'Bonus kazanamadiniz');
            }else if (cost>=50 && cost<200){
                bonus=10;
                system.debug('$100 tutarindaki alis veris karsiligi $'+bonus+' tutarinda bonus kazandiniz');
            }else if(cost>=200 && cost<500){
                bonus=30;
                system.debug( '$300 tutarindaki alis veris karsiligi $'+bonus+' tutarinda bonus kazandiniz');
            }else if( cost>=500){
                bonus= 50;
                system.debug('$500 tutarindaki alis veris karsiligi $'+bonus+' tutarinda bonus kazandiniz');
            }
        return bonus;
    }   
    
    public decimal practiceFive(string urun, integer adet){
        integer fiyat;
        if (urun=='ekmek') {
            fiyat=1;
        } else if (urun=='simit') {
            fiyat=2;
        } else if (urun=='kek'){
            fiyat=3;
        }
        decimal totalFiyat= adet*fiyat;
        System.debug(adet + ' adet '+ urun +' toplam tutari '+ totalFiyat + ' TL. ');
    return totalFiyat;
    }

    public decimal practiceFive2(string urun, integer adet ){
        decimal totalFiyat;
        switch on urun {
            when 'ekmek' {
                totalFiyat=1*adet;
                System.debug(adet + ' adet '+ urun +' toplam tutari '+ totalFiyat + ' TL. ');
            }
            when 'simit' {
                totalFiyat=2*adet;
                System.debug(adet + ' adet '+ urun +' toplam tutari '+ totalFiyat + ' TL. ');
            }
            when 'kek' {
                totalFiyat=3*adet;
                System.debug(adet + ' adet '+ urun +' toplam tutari '+ totalFiyat + ' TL. ');
            }
            when else {
                system.debug('Aradiginiz urun bulunamadi');
            }
        }
    return totalFiyat;
    }

    public decimal practiceSix(decimal x, decimal y, string islem) {
        decimal hesap;
        switch on islem {
            when 'arti' {
                hesap= 2*(x*y);
                Integer round =math.round(hesap);
                System.debug('Diktortgenin cevresi= '+round);
            }
            when 'carpi' {
                hesap= x*y;
                integer round=math.round(hesap);
                System.debug('Diktortgenin alani= '+round);
            }
            when else{
                System.debug('Gecerli bir islem turu giriniz');
            }
        }
     return hesap;   
    }

    public string practiceSeven(decimal boy, decimal kilo){
        string result;
        decimal vki=kilo/(boy*boy);
        decimal  vkiRound=vki.setScale(1);
        if (vkiRound>0 && vkiRound<18.4) {
            result='Zayif';
            System.debug(vkiRound);
            System.debug(result);
            
        } else if (vkiRound>18.5 && vkiRound<24.9) {
            result='Normal';
            System.debug(vkiRound);
            System.debug(result);
            
        } else if (vkiRound>25 && vkiRound<29.9) {
            result='Kilolu';
            System.debug(vkiRound);
            System.debug(result);
            
        } else {
            System.debug('Lütfen girmiş olduğunuz boy ve kilo değerlerini kontrol ediniz!');
        }
        return result;
             
     }
    

    // public integer practiceEight(integer n, integer m){
    //     integer sum=0;
    //     for (Integer i = n; i <= m; i++){
    //         sum+=i;
    //         if (n==m) {
    //             sum=n+m;
    //         }
    //     }

    //     System.debug('Toplam= '+sum);
    // return sum;
    // }

    public static void ageCalculate(map<string,date> tarihler){
        list<date> birthDays =new list<date>();

        if (!tarihler.isEmpty()) {
            for (string eachName : tarihler.keySet()) {

                date x= tarihler.get(eachName);
                date todayDate= date.today();
    
                Decimal age= x.daysBetween(todayDate)/365;
                System.debug(eachName+ ' age is '+age.setScale(1));
            }
        }else {
            system.debug('Your birhtday field is empty');
        }
    }
}
