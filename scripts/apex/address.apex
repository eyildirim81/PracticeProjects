date dateOfToday=date.today();
date dateOfExpiration= date.newInstance(2022, 12, 30);
Integer totalNumberOfTheRemaningDay= dateOfToday.daysBetween(dateOfExpiration);

System.debug('The total number of remaining day for expiration is:  '+ totalNumberOfTheRemaningDay);


date birthDate= date.newInstance(2011, 6, 27);
date todayDate= date.today();
integer ageInDays=birthDate.daysBetween(todayDate);
integer ageInMonth=birthDate.monthsBetween(todayDate);
integer ageInYear= integer.valueOf(ageInDays/365);

system.debug('Age in days is: '+ ageInDays);
system.debug('Age in months is: '+ageInMonth);
system.debug('Age in year is: '+ageInYear);


Address haddrress= new Address();
haddrress.homeAddress();
