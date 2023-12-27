FactoryBot.define do
  factory :reporter do
    name { "MyString" }
    furigana { "MyString" }
    independent { false }
    medium { nil }
    desirability { 1 }
    portrait_source { "MyString" }
    portrait_copyright { "MyString" }
  end
end
