include RandomData

FactoryGirl.define do
  factory :comment
    user
    topic
    body RandomData.random_paragraph
  end
end  
