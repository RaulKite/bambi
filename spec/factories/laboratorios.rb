# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :laboratorio do
    sequence(:name) {|n| "Laboratorio #{n}" }
    sequence(:description) {|n| "Descripcion #{n}" }
  end
end
