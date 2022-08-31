require_relative '../classroom'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('13')
  end

  it 'Contains label of the classroom' do
    expect(@classroom.label).to eq('13')
  end
end
