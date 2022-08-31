require_relative '../teacher'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new(specialization: 'Outer Space', age: 32, name: 'Bob')
  end

  it 'Contains specialization of the teacher' do
    expect(@teacher.specialization).to eq('Outer Space')
  end

  it 'Contains age of the teacher' do
    expect(@teacher.age).to be(32)
  end

  it 'Contains name of the teacher' do
    expect(@teacher.name).to eq('Bob')
  end

  it 'Returns true in can_use_services method' do
    expect(@teacher.can_use_services?).to be true
  end
end
