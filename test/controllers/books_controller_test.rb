require 'test_helper'

class BooksControllerTest < ActionController::TestCase

  def setup
    @books = books(:one)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'book.count' do
      post :create, book: {title: "ExampleTitle"}
      post :create, book: {author: "ExampleAuthor"}
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'book.count' do
      delete :destroy, id: @books
    end
    assert_redirected_to login_url
  end
end
