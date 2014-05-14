require 'spec_helper'

describe "gists/show.html.erb" do

  it "displays back link" do
    assign(:gist, stub_model(Gist, lang: "php"))
    render
    rendered.should have_link('Cofnij', href: gists_path)
  end

  it "displays edit link" do
    assign(:gist, stub_model(Gist, lang: "php"))
    render
    rendered.should have_link('Edytuj', edit_gist_path(:gist))
  end

  it "displays lang" do
    assign(:gist, stub_model(Gist, lang: "php"))
    render
    expect(rendered).to include("Język:")
    expect(rendered).to include("php")
  end

  it "displays snippet" do
    assign(:gist, stub_model(Gist, snippet: "<?php echo 'Hello World'; ?>"))
    render
    expect(rendered).to include("Kod:")
    expect(rendered).to include("Hello World")
  end

  it "displays description" do
    assign(:gist, stub_model(Gist, description: "Sed sagittis suscipit mi sed."))
    render
    expect(rendered).to include("Opis:")
    expect(rendered).to include("Sed sagittis suscipit mi sed.")
  end

  it "displays lang and snippet" do
    assign(:gist, stub_model(Gist, lang: "php", snippet: "<?php echo 'Hello World'; ?>"))
    render
    expect(rendered).to include("Język:")
    expect(rendered).to include("php")
    expect(rendered).to include("Kod:")
    expect(rendered).to include("Hello World")
  end

  it "displays lang and description" do
    assign(:gist, stub_model(Gist, lang: "php", description: "Sed sagittis suscipit mi sed."))
    render
    expect(rendered).to include("Język:")
    expect(rendered).to include("php")
    expect(rendered).to include("Opis:")
    expect(rendered).to include("Sed sagittis suscipit mi sed.")
  end

  it "displays snippet and description" do
    assign(:gist, stub_model(Gist, snippet: "<?php echo 'Hello World'; ?>", description: "Sed sagittis suscipit mi sed."))
    render
    expect(rendered).to include("Kod:")
    expect(rendered).to include("Hello World")
    expect(rendered).to include("Opis:")
    expect(rendered).to include("Sed sagittis suscipit mi sed.")
  end

  it "displays lang, snippet and description" do
    assign(:gist, stub_model(Gist, lang: "php", snippet: "<?php echo 'Hello World'; ?>",
                             description: "Sed sagittis suscipit mi sed."))
    render
    expect(rendered).to include("Język:")
    expect(rendered).to include("php")
    expect(rendered).to include("Kod:")
    expect(rendered).to include("Hello World")
    expect(rendered).to include("Opis:")
    expect(rendered).to include("Sed sagittis suscipit mi sed.")
  end
end