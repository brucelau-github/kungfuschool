package kungfuschool

import grails.transaction.Transactional

@Transactional
class RegisterStudentService {

    int save(Address addr, Student stu, Guardian guardian, Guard guard, Rank rank) {
    	addr.save(flush:true) 
	stu.address = addr
	stu.rank = rank
	stu.save(flush:true)
	guardian.address = addr
	guardian.save(flush:true)
	guard.student = stu
	guard.guardian = guardian
	guard.save(flush:true)
	return stu.id
    }

}
