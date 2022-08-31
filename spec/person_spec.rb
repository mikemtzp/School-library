require_relative '../person'

describe Person do
  before(:each) do
    @person = Person.new(23, 'Mike')
  end

  it 'Contains age of the person' do
    expect(@person.age).to be(23)
  end

  it 'Contains name of the person' do
    expect(@person.name).to eq('Mike')
  end
end
