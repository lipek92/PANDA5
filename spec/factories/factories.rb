FactoryGirl.define do 
  factory :gist do 
    snippet "C# examples"
    lang "c#"  
    description "Simple C#" 
  end

  factory :invalid_gist, parent: :gist do 
    snippet nil 
  end 
  FactoryGirl.define do 
  factory :user do 
     email "kazik@wp.pl" 
     password_digest "123456"
  end
end 
end

