package project

class Client {

     String clientName;
    String clientID;//personal Identity
    Gernder Gender;

    static hasMany = [
            address:Address,
            rents:Rent
               ]

//    static mapping = {
//        table 'address'
//        addressName column:'addressName'
//    }

    static constraints={
//      constraints  Gender nullable: false
    }

}
