require './person'
require './student'
require './teacher'
require './book'
require './rental'
require './methods'
require 'json'

class App
  include Methods
  attr_accessor :people, :books, :rentals

  def initialize
    @people = File.exist?('./people.json') ? JSON.parse(File.read('./people.json'), create_additions: true) : []
    @books = File.exist?('./books.json') ? JSON.parse(File.read('./books.json'), create_additions: true) : []
    @rentals = if File.exist?('./rentals.json')
                 JSON.parse(File.read('./rentals.json'), create_additions: true).map do |rental|
                   load_rental(rental)
                 end
               else
                 []
               end
  end

  def select_option(option)
    case option
    when 1
      list_all_books(books)
    when 2
      list_all_people(people)
    when 3
      @people << create_person
    when 4
      @books << create_book
    when 5
      @rentals << create_rental(books, people)
    when 6
      list_rentals(rentals)
    else
      puts 'Invalid option, please select an option from 1 to 7'
    end
  end

  def preserve_data
    File.write('books.json', JSON.generate(@books))
    File.write('people.json', JSON.generate(@people))
    File.write('rentals.json', JSON.generate(@rentals))
  end

  def load_rental(rental)
    rental_person = @people.filter { |person| person.id == rental[:person_id] }.first
    rental_book = @books.filter { |book| book.title == rental[:book_title] }.first
    Rental.new(rental[:date], rental_book, rental_person)
  end
end
