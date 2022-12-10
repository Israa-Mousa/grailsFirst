package project

import grails.transaction.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class AddressService {

    def serviceMethod() {

    }
    def addAddress(Client client,GrailsParameterMap params){
//        println(params)
         Address address=new Address()
            address.properties=params
           client.addToAddress(address)
//        println(client)
    }
    def addressshowclient(Client client,Address address){
        def result = Address.executeQuery(
                "select p.addressName, p.clientName from Address p join p.client pt where p.clientId=pt.id")
//        result.each { item ->
//            println "Address ${item[0]}"
//        };
        println(result)
    }
}
