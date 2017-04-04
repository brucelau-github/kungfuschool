package kungfuschool

class RegisterStudentController {
	
	def registerStudentService

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		render(view:"index",  model:[studentList: Student.list(params), studentCount: Student.count()])
	}
	
	def create() {
		render(view: "create", model: [student: new Student(), address: new Address(), guardian: new Guardian()])
	}
	
	def save() {
		//get the beans on the page
		def student = new Student(params.student)
		def address = new Address(params.address)
		student.validate()
		address.validate()
		//process type converting errors
		if (student.hasErrors() || address.hasErrors()) {

		//	respond student.errors, view:'create'
			render(view:"create", model:[student: student, address: address])
            		return
		}

		registerStudentService.save(address, student)

                flash.message = message(code: 'default.created.message', args: [message(code: 'student.label', default: 'Student'), student.id])
		render(view:"show", model:[student: student, address: address])

	}

}
