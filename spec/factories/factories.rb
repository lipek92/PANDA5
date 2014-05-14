FactoryGirl.define do 
  factory :gist do 
    snippet "C# examples"
    lang "c#"  
    description "Simple C#" 
  end

  factory :invalid_gist, parent: :gist do 
    snippet nil 
  end 
end 