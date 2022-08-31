require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new(classroom: '13', age: 23, name: 'Mike')
  end

  it 'Contains classroom of the student' do
    expect(@student.classroom).to eq('13')
  end

  it 'Contains age of the student' do
    expect(@student.age).to be(23)
  end

  it 'Contains name of the student' do
    expect(@student.name).to eq('Mike')
  end

  it 'Returns cartoon' do
    expect(@student.play_hooky).to eq("¯\(ツ)/¯")
  end
end
