package project

import grails.transaction.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import grails.converters.JSON

@Transactional
class ClientService {
  def addressService;
    def rentService;
    def serviceMethod() {

    }
    Map save(GrailsParameterMap params){
        def client=new Client(params);
        Map json=[:]
        json.success=false
        try {
            if (params.addressName != null) {
                println("addresss")
                addressService.addAddress(client, params);

                if(client.save(flush: true)) {
                    def car = Car.findById(params.carId)
                    if (params.carId != null) {
                        println(params.carId)
                        rentService.addRent(client, params,car)
                    }
                }
            }
            client.save(flush: true);
            println(" ")
            println("after saving")
            println(client)
//            def address=Address.findById(1);
//            println(address)
//            addressService.addressshowclient(client,address);


            if(client.hasErrors()){
                client?.errors?.each{
                    println(it)
                }
            }
            if(!client.hasErrors() && client.save()) {
               json.success=true
                json.message="added successfuly"
            }
            else{
                json.false=true
                json.message="notadded"
            }

        }
        catch (Exception e){
            e.printStackTrace()
        }
        return(json)


    }
}
