public  class EmployeeInfo {
    public static string showInfo(integer empNumber){
        string employeeName='';
        map<Integer,string> employeeMap= new map<Integer,string>();
        employeeMap.put(1,'Jackson');
        employeeMap.put(2,'Terry');
        employeeMap.put(3,'Tammy');
        employeeMap.put(4,'Jen');

        employeeName= employeeMap.get(empNumber);

        return employeeName;
    }
}
