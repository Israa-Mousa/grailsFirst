package project

class Address {
    String addressName;
    static belongsTo = [client:Client]

//    static mapping = {
//        client insertable: false
//        client updateable: false
//    }
    static constraints = {
        addressName nullable: true
    }
}
