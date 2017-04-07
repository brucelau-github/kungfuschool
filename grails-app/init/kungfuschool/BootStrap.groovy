package kungfuschool

class BootStrap {

    def init = { servletContext ->
//	def add = new Address(street:"498 Askin Avenue")
//	add.save()
//	def rnk = new Rank(rankName:"rank 1", beltColor:"white", requirementDes:"no requirement at all")
//	def rnk1 = new Rank(rankName:"rank 2", beltColor:"white", requirementDes:"no requirement at all")
//	rnk.save()
//	rnk1.save()
//	def std = new Student(firstName:"Bruce", lastName:"Lau", email:"liu1ee@uwindsor.ca", mobileNumber:"2269879933", birthDate: Date.parse("yyyy-MM-dd","2017-01-19"), ,enrollDate: Date.parse("yyyy-MM-dd","2017-01-19"), studentNumber:"104522984", address:add, rank:rnk)
//	new Student(firstName:"Bruce1", lastName:"Lau", email:"liu1ee@uwindsor.ca", mobileNumber:"2269879933", birthDate: Date.parse("yyyy-MM-dd","2017-01-19"), ,enrollDate: Date.parse("yyyy-MM-dd","2017-01-19"), studentNumber:"104522984", address:add, rank:rnk).save()
//	new Student(firstName:"Bruce2", lastName:"Lau", email:"liu1ee@uwindsor.ca", mobileNumber:"2269879933", birthDate: Date.parse("yyyy-MM-dd","2017-01-19"), ,enrollDate: Date.parse("yyyy-MM-dd","2017-01-19"), studentNumber:"104522981", address:add, rank:rnk).save()
//	new Student(firstName:"Bruce3", lastName:"Lau", email:"liu1ee@uwindsor.ca", mobileNumber:"2269879933", birthDate: Date.parse("yyyy-MM-dd","2017-01-19"), ,enrollDate: Date.parse("yyyy-MM-dd","2017-01-19"), studentNumber:"104522982", address:add, rank:rnk).save()
//	std.save()
	def adminRole = new Role(authority: 'ROLE_ADMIN').save()
	def userRole = new Role(authority: 'ROLE_USER').save()

	def testUser = new User(username: 'me', password: 'password').save()

	UserRole.create testUser, adminRole

	UserRole.withSession {
	   it.flush()
	   it.clear()
	}

	assert User.count() == 1
	assert Role.count() == 2
	assert UserRole.count() == 1
    }
    def destroy = {
    }
}
