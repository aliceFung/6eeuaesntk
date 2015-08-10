require 'rails_helper'

feature 'User paths' do
  let(:user){ create(:user) }
  before do
    visit root_path
  end

  context "As an existing user/correct login" do
    before do
      sign_in(user)
      # save_and_open_page
      # binding.pry
    end

    scenario "redirects to user_path after login" do
      expect(page).to have_content "#{user.username}'s shoe closet"
    end

    scenario "user creates a pair of shoe redirected to user_path with new shoe in list" do
      visit user_path(user.id)
      click_link "Add a pair of shoes!"
      fill_in "shoe_brand", with: "some brand"
      fill_in "shoe_model", with: "cool model"
      select("2015", :from => 'shoe_year')
      select("2015", :from => 'shoe_purchase_date_1i')
      select("January", :from => 'shoe_purchase_date_2i')
      select("2", :from => 'shoe_purchase_date_3i')
      click_button "Create Shoe"
      expect(page).to have_content "cool model"
    end

  end
end