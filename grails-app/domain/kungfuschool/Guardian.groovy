package kungfuschool

class Guardian {

    String firstName, lastName, relationship, email, mobileNumber
    static hasMany = [student: Student]
    static constraints = {
      email email:true
      firstName blank:false
      lastName blank:false
      relationship inList: ["Father", "Mother", "Other Legal Guardians"]
    }
}
