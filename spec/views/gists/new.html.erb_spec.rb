require 'spec_helper'

describe "gists/new.html.erb" do
  before do
    assign(:gist, stub_model(Gist, snippet: 'foo'))
  end

  it "display header" do
    render
    expect(rendered).to include("Nowy kod")
  end

  it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 1)
  end

  it "display back link" do
    render
    rendered.should have_link('Cofnij', href: gists_path)
  end

  it "display confirm button" do
    render
    rendered.should have_selector('input[type=submit]')
  end


end