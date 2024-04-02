class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :edit]
  
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
    private

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end
end
