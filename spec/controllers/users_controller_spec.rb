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
      post :create, { user2: { username: 'jane', email: 'jane@j.com', password: 'poop'}}
      expect(response.status).to eq 302
    end
    xit "creates new user in DB" do
    end
    xit "redirects to root" do
    end
    xit "renders the :new template for invalid user params" do
    end
  end

end
