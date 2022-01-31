FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale  { 'Some test rationale' }
    user
  end  

  factory :second_post, class: 'Post' do
    date { Date.yesterday }
    rationale  { 'Another test rationale' }
    user
  end

  factory :post_from_other_user, class: 'Post' do
    date { Date.yesterday }
    rationale { 'Some more content' }
    non_authorized_user
  end
end