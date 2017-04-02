package kungfuschool

class BootStrap {

    def init = { servletContext ->
	def add = new Address(street:"498 Askin Avenue")
	add.save()
	def rnk = new Rank(rankName:"rank 1", beltColor:"white", requirementDes:"no requirement at all")
	rnk.save()
	def std = new Student(firstName:"Bruce", lastName:"Lau", email:"liu1ee@uwindsor.ca", mobileNumber:"2269879933", birthDate: Date.parse("yyyy-MM-dd","2017-01-19"), ,enrollDate: Date.parse("yyyy-MM-dd","2017-01-19"), studentNumber:"104522984", address:add, rank:rnk)
	std.save()
    }
    def destroy = {
    }
}
