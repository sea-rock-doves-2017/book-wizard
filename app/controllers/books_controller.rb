class BooksController < ApplicationController

  def index
    @books = Book.all
    @genres = Genre.all
  end

  def show
    @book = Book.find(params[:id])
    @reviews = Review.where(book_id: @book.id)
  end

end
