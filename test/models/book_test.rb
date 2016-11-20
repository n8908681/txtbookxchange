require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    @book = Book.new(isbn: "0000000000000", title: "Example Title", author: "Example Author", bookstatus: "true", user_id: @user.id)
  end
  
  test "should be valid" do
    assert @book.valid?
  end
  
  test "isbn should be present" do
    @book.isbn = "  "
    assert_not @book.valid?
  end

  test "Title should be present" do
    @book.title = "  "
    assert_not @book.valid?
  end
  
  test "Author should be present" do
    @book.author = "  "
    assert_not @book.valid?
  end
  
  test "bookstatus should be present" do
    @book.status = "  "
    assert_not @book.valid?
  end
  
end


