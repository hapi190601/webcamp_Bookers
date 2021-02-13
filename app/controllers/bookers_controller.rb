class BookersController < ApplicationController
  def new
    @book = Book.new
  end

  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end


  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to show_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end


  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to show_path
      flash[:notice] = "Book was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to index_path
    flash[:notice] = "Book was successfully destroyed"
  end


  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
