package project

import grails.transaction.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class PersonService {

    def savePerson(GrailsParameterMap params){
        print("hellow person");
    }

    def serviceMethod() {

    }
}
