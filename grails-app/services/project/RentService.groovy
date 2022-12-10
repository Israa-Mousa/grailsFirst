package project

import grails.transaction.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class RentService {

    def serviceMethod() {

    }

    def addRent(Client client,GrailsParameterMap params,Car car){
//        println(params.carId)
        Rent rent=new Rent()
//        println("test")
//        rent.carId=params.carId
//        Car findByID(params.carId)
//        def car = Car.findById(params.carId)
//        println("Car ID")
//        println(car.id)
//        rent.clientId=client.id
//        def p = Car.get(1)

//        println(car)
//        println(client)
//        rent.price=params.long("price")
//        rent.startTime=params.startTime
//        rent.returnTime=params.returnTime
        rent.properties=params
        rent.car = car
        rent.client= client
   rent.save()
//        println(rent)
        client.addToRents(rent)
//        car.addToRents(rent)
//        print(rent.properties)
//        println(client)
//            println("rent obj")
//            println(rent)
    }
}
//def car = Car.findById(1)
//
////        def car1 = Car.findById(1)
//println(car)
//println(car.carModel)
//byte[] imageInByte = car.carPhoto
//response.contentType = 'image/png' // or the appropriate image content type
//response.outputStream << imageInByte
//response.outputStream.flush()