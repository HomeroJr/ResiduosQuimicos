package residuosquimicos



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResiduoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Residuo.list(params), model:[residuoInstanceCount: Residuo.count()]
    }

    def show(Residuo residuoInstance) {
        respond residuoInstance
    }

    def create() {
        respond new Residuo(params)
    }

    @Transactional
    def save(Residuo residuoInstance) {
        if (residuoInstance == null) {
            notFound()
            return
        }

        if (residuoInstance.hasErrors()) {
            respond residuoInstance.errors, view:'create'
            return
        }

        residuoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'residuo.label', default: 'Residuo'), residuoInstance.id])
                redirect residuoInstance
            }
            '*' { respond residuoInstance, [status: CREATED] }
        }
    }

    @Transactional
    def update(Residuo residuoInstance) {
        if (residuoInstance == null) {
            notFound()
            return
        }

        if (residuoInstance.hasErrors()) {
            respond residuoInstance.errors, view:'edit'
            return
        }

        residuoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Residuo.label', default: 'Residuo'), residuoInstance.id])
                redirect residuoInstance
            }
            '*'{ respond residuoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Residuo residuoInstance) {

        if (residuoInstance == null) {
            notFound()
            return
        }

        residuoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Residuo.label', default: 'Residuo'), residuoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'residuo.label', default: 'Residuo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
