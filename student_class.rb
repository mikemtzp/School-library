require './person_class'

class Student < Person
  def initialize(classroom, age, name = 'Unkwown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

lol = Student.new('5-B', 12, 'Bob', parent_permission: false)
p lol.play_hooky
p lol.can_use_services?
p lol.of_age?
p lol
