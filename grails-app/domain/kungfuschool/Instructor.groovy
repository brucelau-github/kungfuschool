package kungfuschool

class Instructor {

    String facultyNumber,firstName,lastName, email

    static constraints = {
      facultyNumber unique: true
      email email:true
      firstName blank:false
      lastName blank:false
    }
}
