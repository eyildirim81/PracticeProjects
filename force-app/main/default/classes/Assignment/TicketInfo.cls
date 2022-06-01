public  class TicketInfo {
    public string departureCity;
    public string arrivalCity;
    public integer fligthNumber;
    public string seatAssignment;

    public void printTicket(){
        system.debug('This ticket is for the journey from '+departureCity+' to '+arrivalCity);
    }

}
