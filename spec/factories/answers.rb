FactoryBot.define do
  factory :answer do
    value { "MyString" }
    correct { false }
    question { nil }
  end
end
