package project

class Person {
    def scaffold = true
    String firstName;
    String secondName;
    String fullName;
    String userName;
    String userEmail;
//    static hasMany = [car:Car]
    int age;


    static constraints = {
//        homepage url:true,nullable:false;
        firstName size:2..10, nullable:false,balnk:false
        secondName size: 2..15, nullable: true
        fullName nullable: true,validator: {
            val,obj->

        }
        userName unique: true,nullable: false
//        username(unique: true,nullable: false)
        userEmail blank: true,nullable: false
        age min: 0,nullable:false,email:true
        //not work for email validtor it's accept all


    }
}
