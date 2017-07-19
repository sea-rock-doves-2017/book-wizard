require 'rails_helper'

describe BooksController do
  let!(:genre) { Genre.create!(name: 'Fiction')}
  let!(:book) { Book.create!(title: "B", author: "G", synopsis: "X", genre_id: genre.id)}

  describe "GET #index" do

    it "responds with status code 200" do
      get :index
      expect(response.status).to eq 200
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns books as @books" do
      get :index
      books = Book.all
      expect(assigns(:books)).to eq books
    end

  end

  describe "GET #show" do

    it "responds with status code 302" do
      get :show, { id: book.id }
      expect(response.status).to eq 200
    end

    it "assigns the correct book as @book" do
      get :show, { id: book.id }
      expect(assigns(:book)).to eq(book)
    end

    it "renders the :show template" do
      get :show, { id: book.id }
      expect(response).to render_template(:show)
    end

  end

end
