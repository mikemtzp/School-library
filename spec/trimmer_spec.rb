require_relative '../trimmer_decorator'
require_relative '../base_decorator'

describe TrimmerDecorator do
  before(:each) do
    @base_decorator = BaseDecorator.new('maximilianus')
  end

  it 'The string "maximilianus" is trim to "maximilian"' do
    string = 'maximilianus'
    trim = TrimmerDecorator.new(string)
    expect(trim.correct_name).to eq('maximilian')
  end
end
