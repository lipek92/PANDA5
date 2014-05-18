require 'spec_helper'

describe GistsController do


  before :each do 
      @user = FactoryGirl.create(:user)
      session[:user_id] = @user.id 
  end  
  
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
  
 describe "#PUT #update" do  

  before :each do 
      @gist = FactoryGirl.create(:gist) 
  end 

    it "redirect to gists after edit" do
      @attr = { :snippet => "Snippet title", :lang => "c" , :description => "Tak" }
      put :update, :id => @gist.id, :gist => @attr
          
      @gist.reload 
      expect(response).to redirect_to "/gists/"+@gist.id.to_s
    end

    it "update gist" do
      @attr = { :snippet => "Snippet title", :lang => "c" , :description => "Sample code" }
      put :update, :id => @gist.id, :gist => @attr
          
      @gist.reload 
      @gist.description.should eq("Sample code") 
    end
  end
end

