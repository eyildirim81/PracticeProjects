Students gr1= new Students();
gr1.firstName='elif';
gr1.lastName='yildirim';
gr1.classYear='3';
gr1.majorStream='math';
string stMajor1= gr1.generateReport();
System.debug(stMajor1);

Students gr2= new Students();
gr2.firstName='Zeynep';
gr2.lastName='Keskin';
gr2.classYear='7';
gr2.majorStream='STEM';
string stMajor2= gr2.generateReport();
System.debug(stMajor2);
