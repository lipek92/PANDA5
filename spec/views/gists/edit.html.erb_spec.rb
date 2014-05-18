require 'spec_helper'

describe "gists/edit.html.erb" do
  before do
    assign(:gist, stub_model(Gist, snippet: 'foo'))
  end

  it "display header" do
    render
    expect(rendered).to include("Edytuj kod")
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

  it "display back link" do
    render
    rendered.should have_link('Wyświetl', gist_path(:gist))
  end

  it "display snippet label" do
    render
    rendered.should have_field("gist_snippet")
  end

  it "display gist description" do
    render
    rendered.should have_field("gist_description")
  end

  it "display gist lang" do
    render
    rendered.should have_field("gist_lang")
  end


end