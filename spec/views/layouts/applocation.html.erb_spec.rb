require 'spec_helper'

describe "layouts/application.html.erb" do

    it "form Search" do
      render
      rendered.should have_field("search", :type => "text")
      rendered.should have_button("Szukaj")
    end

    it "home button" do
      render
      rendered.should have_link('Strona główna', gists_path)
    end

    it "git button" do
      render
      rendered.should have_link("Projekt na Github'ie", "https://github.com/lipek92/PANDA5")
    end
end