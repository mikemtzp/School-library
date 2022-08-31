require_relative '../base_decorator'

describe BaseDecorator do
  context 'When the class is initialized with parameters' do
    let(:base_decorator) { BaseDecorator.new('maximilianus') }

    it 'Is correctly initialized with string "maximilianus"' do
      expect(base_decorator).to be_truthy
    end

    it 'Returns maximilianus as the value for @nameable' do
      expect(base_decorator.nameable).to eq('maximilianus')
    end
  end
end
