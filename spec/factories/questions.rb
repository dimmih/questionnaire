FactoryBot.define do
  factory :question do
    value         { "Dummy question" }
    difficulty    { :easy }
    kind          { :text }
    field
  end
end
