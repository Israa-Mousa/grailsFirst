package project

class Car {
    def scaffold = true
//    String type;//(A,b,c)
//    String number;
//    String  style;
//    static belongsTo = [person:Person]
//    static mapping = {
//        Person person: ''
//    }


    String carModel;
    String carColor;
    String carNumber;
    Byte[] carPhoto;
//    static hasMany = [rent:Rent]
    static constraints = {
//        type size:3..20,nullable: true
//        number unique:true, size: 1..2
//        style size:6..2,nullable: true
        carPhoto nullable: true

    }
}
