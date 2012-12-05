class BooksController < ApplicationController
  def index
    category=Category.find(params[:category_id])
    @books = category.book.all
  end

  def new
    @category=Category.find(params[:category_id])
    @book = @category.book.new
  end

  def create
    @category=Category.find(params[:category_id])
    @book = Book.new(params[:book])
    @book.save!
    redirect_to category_path
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
