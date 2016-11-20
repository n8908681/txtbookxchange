class StaticPagesController < ApplicationController
  def home
    @user = current_user if logged_in?
    @books = Book.paginate(page: params[:page])
    
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
