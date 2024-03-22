class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to '/books'
    else
      @book = Book.new
      @books = Book.all
      flash.now[:alert]  
      render :index
    end
  end

  def index
    @book = Book.new

    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "Book was successfully updated."
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'  # 投稿一覧画面へリダイレクト
  end

  private
  #ストロングパラメータ
    def book_params
      params.require(:book).permit(:title, :body)
    end

end