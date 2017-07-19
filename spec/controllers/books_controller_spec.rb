require 'rails_helper'

describe BooksController do
  let!(:genre1) { Genre.create!(name: 'Fiction')}
  let!(:book1) { Book.create!(title: "B", author: "G", synopsis: "X", genre_id: genre1.id)}

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
  end

end
