require 'pry'

class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(book_title)
    @books.any? do |book|
      book.title == book_title
    end
  end

  def card_catalogue
    @books.sort_by do |book|
      book.author_last_name
    end
  end

  def find_by_author(name)
    author_name = name.split(' ')
    array_books = @books.select do |book|
      (book.author_last_name == author_name[1]) && (book.author_first_name == author_name[0])
    end
    hash_books = array_books.map do |book|
      {book.title => book}
    end
  end

  def find_by_publication_date(date)
    array_books = @books.select do |book|
      book.publication_date == date
    end
    hash_books = array_books.map do |book|
      {book.title => book}
    end
  end
  
end
