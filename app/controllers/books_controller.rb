class BooksController < ApplicationController

  def index
    @books = Book.all
    @genres = Genre.all
  end

  def show
    @book = Book.find(params[:id])
  end

end
