package kungfuschool

import grails.transaction.Transactional

@Transactional
class RegisterStudentService {

    int save(Address addr, Student stu) {
    	addr.save(flush:true) 
	stu.address = addr
	stu.save(flush:true)
	return -1
    }

}
