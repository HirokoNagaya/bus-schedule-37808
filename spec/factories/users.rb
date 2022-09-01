FactoryBot.define do
  factory :user do
    name                  {'test'}
    employee_number       {'001'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
  end
end