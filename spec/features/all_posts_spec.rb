require 'rails_helper'

describe "All Posts" do
  let!(:first_post) { create :post, title: 'First Post', created_at: 1.day.ago }
  let!(:second_post) { create :post, title: 'Second Post', created_at: Time.current }

  it 'displays both posts' do
    visit posts_path
    expect(page).to have_content first_post.title
    expect(page).to have_content second_post.title
  end

  it 'displays the newest post first' do
    visit posts_path
    expect(page).to have_selector('ul.posts li:nth-child(1)', text: second_post.title)
    expect(page).to have_selector('ul.posts li:nth-child(2)', text: first_post.title)
  end
end
