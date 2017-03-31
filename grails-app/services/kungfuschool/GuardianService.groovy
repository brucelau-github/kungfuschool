package kungfuschool

import grails.transaction.Transactional

@Transactional
class GuardianService {

    def createWithStuId(stuId) {
    	def student = Student.get(stuId)
      def guard = new Guard(student: student)
    	def guardian = new Guardian(guard: guard)
        return guardian
    }

     def save(Guardian guardian) {
        guardian.save flush:true
    }
}
