require_relative '../nameable'

describe Nameable do
  it 'Raises "NotImplementedError" when running correct_name method' do
    nameable = Nameable.new
    expect { nameable.correct_name }.to raise_error(NotImplementedError)
  end
end
