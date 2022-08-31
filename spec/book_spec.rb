require_relative '../book'

describe Book do
  before(:each) do
    @book = Book.new('Dracula', 'Bram Stoker')
  end

  it 'Contains title of the book' do
    expect(@book.title).to eq('Dracula')
  end

  it 'Contains author of the book' do
    expect(@book.author).to eq('Bram Stoker')
  end
end
