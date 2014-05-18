require 'spec_helper'
require "forwardable"

describe User do
    describe "user create" do  

   it "adding user and increment user count" do
       expect do
          @user = FactoryGirl.create(:user)
          @user.save
      end.to change(User, :count).by(1)
    end
  end
  
  describe "#POST #delete" do  
  before :each do 
      @user = FactoryGirl.create(:user) 
      @user.save
    end 
  
  it "remove user" do
      expect do
         User.delete(@user.id)
      end.to change(User, :count).by(-1)
    end
  end
  
  describe "#POST #find" do  
  before :each do 
      @user = FactoryGirl.create(:user) 
      @user.save
    end 
  
  it "find user" do
      expect do
        @found_user = User.find(@user.id)
        @found_user.id.should_receive(@user.id)
    end
end
end
end
