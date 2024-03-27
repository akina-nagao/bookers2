class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :edit]
  
  def index
    @user = current_user.id
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @user = User.find(params[:id])
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
    private

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end
end
