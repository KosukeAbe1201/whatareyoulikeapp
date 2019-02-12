FactoryBot.define do
  factory :answer do
    flag 1
    name "answer"
    correct 0

    to_create do |instance|
      instance.save validate: false
    end
  end
end
