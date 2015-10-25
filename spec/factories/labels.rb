include RandomData

FactoryGirl.define do
    factory :label
    name RandomData.random_sentence
  end    
end
