class BooksController < ApplicationController
  def index
    category=Category.find(params[:category_id])
    @books = category.book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    @book.save!
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])

  end

  def edit
     @book = Book.find(params[:id])

  end

  def update
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
end
