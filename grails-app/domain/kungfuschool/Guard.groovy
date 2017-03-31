package kungfuschool

class Guard {

    Student student
    Guardian guardian
    String relation
    static constraints = {
      relation inList: ["Father", "Mother", "Other Legal Guardians"]
    }
}
