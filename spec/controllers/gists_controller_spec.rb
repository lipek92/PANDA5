require 'spec_helper'

describe GistsController do


   
  
describe "GET #new" do  

   it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
end

describe "GET #edit" do  
   it "renders the edit template" do
      get :new
      expect(response).to render_template("new")
    end
  end
  
describe "#POST #create" do  
   
   before :each do 
      @gist = FactoryGirl.create(:gist) 
    end 
   
   it "renders to show with particular gist" do 
      get :show, id: @gist
      response.should render_template :show 
   end
   
   it "redirects to created gist page" do
      post :create, gist: FactoryGirl.attributes_for(:gist)
      expect(response).to redirect_to "/gists/2" 
    end
end

describe "#POST #delete" do  
  before :each do 
      @gist = FactoryGirl.create(:gist) 
    end 
  
  it "remove gist" do
      expect do
        delete :destroy, id: @gist
      end.to change(Gist, :count).by(-1)
    end
  end
end

