require 'spec_helper'

describe "sessions/new.html.erb" do

  it "display header" do
    render
    expect(rendered).to include("Logowanie")
  end

  it "display email label" do
    render
    rendered.should have_field("sessions_email")
  end

  it "display password label" do
    render
    rendered.should have_field("sessions_password")
  end

  it "display login button" do
    render
    rendered.should have_selector('input[type=submit]')
  end
end
