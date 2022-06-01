RankHandler rk = new RankHandler();
string prize1= rk.rankPrize(1);
system.debug('Prize 1 is: '+prize1);

RankHandler rk1= new RankHandler();
string prize2= rk.rankPrize(2);
system.debug('Prize 2 is: '+prize2);

RankHandler rk2= new RankHandler();
string prize3= rk.rankPrize(7);
system.debug('Prize 1 is: '+prize3);

RankHandler rk3= new RankHandler();
string prize4= rk.rankPrize(15);
system.debug('Prize 1 is: '+prize4);

RankHandler r=new RankHandler();
system.debug(r.rankPriceSwitch(1));
system.debug(r.rankPriceSwitch(10));
system.debug(r.rankPriceSwitch(100));

