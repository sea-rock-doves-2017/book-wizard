require 'rails_helper'

describe UsersController do
  let!(:user) { User.create!(username: 'Bob', email: 'b@b.com', password: 'blah')}

  describe "GET #new" do

    it "responds with 200" do
      get :new
      expect(response.status).to eq 200
    end

    it "assigns a new user to @user" do
      get :new
      expect(assigns(:user)).to be_a_new User
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end

  end

  xdescribe "POST #create" do

    it "responds with 302" do
    end

    it "creates new user in DB" do
    end

    it "redirects to root" do
    end

    it "renders the :new template for invalid user params" do
    end

  end

end
