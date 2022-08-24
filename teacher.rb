require './person_class'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teach = Teacher.new('history', 43, 'Kyle')
p teach.can_use_services?
p teach.of_age?
p teach
