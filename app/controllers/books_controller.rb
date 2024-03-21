class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/'
  end

  def index
    @book = Book.new

    @books = Book.all


  end

  def show

  end

  def edit

  end

  private
  #ストロングパラメータ
    def book_params
      params.require(:book).permit(:title, :body)
    end

end