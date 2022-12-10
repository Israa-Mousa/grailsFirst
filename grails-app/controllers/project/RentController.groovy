package project

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class RentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Rent.list(params), model:[rentCount: Rent.count()]
    }

    def show(Rent rent) {
        respond rent
    }

    def create() {
        respond new Rent(params)
    }

    @Transactional
    def save(Rent rent) {
        if (rent == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (rent.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond rent.errors, view:'create'
            return
        }

        rent.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rent.label', default: 'Rent'), rent.id])
                redirect rent
            }
            '*' { respond rent, [status: CREATED] }
        }
    }

    def edit(Rent rent) {
        respond rent
    }

    @Transactional
    def update(Rent rent) {
        if (rent == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (rent.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond rent.errors, view:'edit'
            return
        }

        rent.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'rent.label', default: 'Rent'), rent.id])
                redirect rent
            }
            '*'{ respond rent, [status: OK] }
        }
    }

    @Transactional
    def delete(Rent rent) {

        if (rent == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        rent.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'rent.label', default: 'Rent'), rent.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rent.label', default: 'Rent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
