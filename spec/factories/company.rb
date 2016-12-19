FactoryGirl.define do
  factory :company, class: Company do
    signed_in_as_a_valid_user

    title 'Google'
    description 'A modern web company'
  end
end