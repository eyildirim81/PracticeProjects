public class ListPractice {
    public static  List<Planets> planetList = new List<Planets>();
    public static string addPlanet(string planetName, integer planetNUmber, integer planetNumberMoon){
        string msg;
        if (planetName!=null) {
            Planets pln= new Planets();
            pln.planetName=planetName;
            pln.planetNumber=planetNumber;
            pln.planetNumberMoon= planetNumberMoon;
            planetList.add(pln);
            
            System.debug(pln);
            msg='"Planet added successfully';
        } else {
            
        }






        return msg;
    }

   
}
