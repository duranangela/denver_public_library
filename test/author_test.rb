require './test/test_helper'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_it_starts_with_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_it_can_add_a_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal 1, charlotte_bronte.books.length
  end

  def test_it_can_add_more_than_one_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    charlotte_bronte.add_book("Villette", "1853")
    assert_equal 2, charlotte_bronte.books.length
  end

end
