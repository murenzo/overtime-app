FactoryBot.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end
  factory :user do
    first_name { 'azeez' }
    last_name  { 'banjoko' }
    email  { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
  end

  factory :non_authorized_user, class: 'User' do
    first_name { 'Non' }
    last_name  { 'Authorized' }
    email  { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
  end

  factory :admin_user, class: 'AdminUser' do
    first_name { 'admin' }
    last_name  { 'user' }
    email  { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
  end
end
