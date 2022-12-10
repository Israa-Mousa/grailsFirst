package project

import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class ClientController {
     def  clientService;
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Client.list(params), model:[clientCount: Client.count()]
    }

    def show(Client client) {
        respond client
    }

    def create() {
//        print('scnklsjfd')
        print(new Client(params))
        respond new Client(params)
    }

    @Transactional
    def save2(Client client) {
//        print("mnmsdnbcvjdbn")
        println("client params"+params)
        if (client == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (client.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond client.errors, view:'create'
            return
        }
        println(client)
        client.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'client.label', default: 'Client'), client.id])
                redirect client
            }
            '*' { respond client, [status: CREATED] }
        }
    }
    def saveClient1(params){
//        println("kllk")
//        def jsonObj = request.JSON
//        println(jsonObj)
//        print(params)
//        print("hshhsh")
//        exit();
        def client=clientService.save(params)

//        if(!client.hasErrors()){
//            redirect(action:'show',id:client.id)
//        }
//        else{
//            redirect(action:'create');
//        }
        render(client) as JSON

    }


    def save={
        def client=clientService.save(params)
//        println("before save");
//        print(client)
//        def result = Address.executeQuery(
//                "select p.addressName, count(*) from Address p join p.client pt group by p")
//                result.each { item ->
//                    println "Address ${item[0]} has ${item[1]} client"
//                };
        if(!client.hasErrors()){
            redirect(action:'show',id:client.id)
        }
            else{
            redirect(action:'create');
        }
    }

    def edit(Client client) {

        respond client
    }
    def getNew(){
        render(template: 'createClinet') as JSON
    }

    @Transactional
    def update(Client client) {
        if (client == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (client.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond client.errors, view:'edit'
            return
        }

        client.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'client.label', default: 'Client'), client.id])
                redirect client
            }
            '*'{ respond client, [status: OK] }
        }
    }

    @Transactional
    def delete(Client client) {

        if (client == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        client.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'client.label', default: 'Client'), client.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'client.label', default: 'Client'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
