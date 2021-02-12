class BookersController < ApplicationController
  def new
    @book = Book.new
  end

  def top
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to show_path(book.id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to show_path(book.id)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to index_path
  end


  # ストロングパラメータ
  private
  def book_params
    params.permit(:title, :body)
  end
end
