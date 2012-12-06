class BooksController < ApplicationController
  def index
    category=Category.find(params[:category_id])
    @books = category.book.all
  end

  def new
    @category=Category.find(params[:category_id])
    @book = @category.books.new
  end

  def create
    @category = Category.find(params[:category_id])
    @book = @category.books.new(params[:book])
    if @book.save
      redirect_to category_path(@category.id)
    else
      render "new"
    end
  end

  def show
    @book = Book.find(params[:id])

  end

  def edit
    @category=Category.find(params[:category_id])
     @book = @category.books.find(params[:id])

  end

  def update
     @category = Category.find(params[:category_id])
    @book = @category.books.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to category_path(@category.id)
  end

  def destroy
     @category = Category.find(params[:category_id])
    @book = @category.books.find(params[:id])
    @book.destroy
    redirect_to category_path(@category.id)
  end
end
