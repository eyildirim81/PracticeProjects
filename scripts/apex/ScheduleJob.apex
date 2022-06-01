AccountSchedulable aSche = new AccountSchedulable();
string cron = '0 0 13 * * ?';
System.Schedule('Schedule account job via cron', cron, aSche);