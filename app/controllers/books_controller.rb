class BooksController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      flash[:success] = "Book added!"
      redirect_to current_user
    else
      render 'books/addbook'
    end
  end

  def destroy
    @book.destroy
    flash[:success] = "Book deleted"
    redirect_to request.referrer || root_url
  end
  
  def addbook
    @book = current_user.books.build if logged_in?
  end
    
  private

    def book_params
      params.require(:book).permit(:isbn, :title, :author, :bookstatus)
    end
    
    def correct_user
      @book = current_user.books.find_by(id: params[:id])
      redirect_to root_url if @book.nil?
    end
end