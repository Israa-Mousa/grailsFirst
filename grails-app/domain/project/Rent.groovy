package project

class Rent {
    Date startTime;
    Date returnTime;
    int price;

    static  belongsTo = [
            car:Car,
            client:Client]

    static constraints = {
    }
}
