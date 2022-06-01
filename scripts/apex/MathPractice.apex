MathPractice pr= new MathPractice();
pr.practiceSeven(1.70, 66.0);
pr.practiceEight(8, 20);
pr.practiceEight(8, 8);


pr.practiceSix(10.7, 8, 'arti');
pr.practiceSix(10.7, 8, 'carpi');
pr.practiceSix(10.7, 8, 'cikarma');

pr.practiceFive2('ekmek', 10);
pr.practiceFive2('kek', 6);
pr.practiceFive2('simit', 12);
pr.practiceFive('ekmek', 10);
pr.practiceFive('kek', 6);
pr.practiceFive('simit', 12);
pr.practiceFour(-50);
pr.practiceFour(30);
pr.practiceFour(100);
pr.practiceFour(300);

decimal ortalama= pr.practiceThree(555, 278);
system.debug('Iki sayinin ortalamasi: '+ortalama);

decimal kitleIndex= pr.practiceTwo(1.78,85.5);
system.debug('Vucut Kitle Indeksi: '+kitleIndex);

decimal perimeter = pr.practiceOne(12.58, 15.88);
system.debug('Dikdortgenin cevre uzunlugu: '+perimeter);


Map<String,Date> tarihler =new Map<String,Date>();
tarihler.put('Pam', date.newInstance(1989, 12, 29));
tarihler.put('Tom', date.newInstance(1995, 8, 15));
tarihler.put('Jack',date.newInstance(1985, 5, 20));


MathPractice.ageCalculate(tarihler);



