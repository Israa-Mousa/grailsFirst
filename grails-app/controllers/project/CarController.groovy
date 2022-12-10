package project

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CarController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Car.list(params), model:[carCount: Car.count()]
    }

    def show(Car car) {
//        var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(car.carPhoto);
//        return System.Convert.ToBase64String(plainTextBytes);
//        string encodedStr = Convert.ToBase64String(Encoding.UTF8.GetBytes("inputStr"));
//        String file=Base64.encoder(car.carPhoto.toString())

        respond car
    }

    def fetchImage(){
        println("test mm")
        println(params)
        def car = Car.findById(params.car)
        byte[] imageInByte = car.carPhoto
        response.contentType = 'image/png' // or the appropriate image content type
        response.outputStream << imageInByte
        response.outputStream.flush()
        //covert 64 and return
        //file system
        //many image
    }
    def displayAvatarForCurrentUser() {
        def car= Car.findById(1)
        // write the photo to the outputstream
        response.outputStream << car.carPhoto
        response.outputStream.flush()
    }
    def create() {
//       print (params['carNumber'])
        respond new Car(params)
    }

    @Transactional
    def save(Car car) {
        def ulpaodImage=params.carPhoto2;
        car.carPhoto=ulpaodImage.getBytes();
//        print (request.getFileNames())

        if (car == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (car.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond car.errors, view:'create'
            return
        }

        car.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'car.label', default: 'Car'), car.id])
                redirect car
            }
            '*' { respond car, [status: CREATED] }
        }
    }

    def edit(Car car) {
        respond car
    }

    @Transactional
    def update(Car car) {
        if (car == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (car.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond car.errors, view:'edit'
            return
        }

        car.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'car.label', default: 'Car'), car.id])
                redirect car
            }
            '*'{ respond car, [status: OK] }
        }
    }

    @Transactional
    def delete(Car car) {

        if (car == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        car.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'car.label', default: 'Car'), car.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'car.label', default: 'Car'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
