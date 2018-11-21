require 'rails_helper'

RSpec.feature "Sessions", type: :feature do
  describe "homepage", type: :view do
    before do
      session.delete :name
    end

    it "provides login link if user is not logged in" do
      visit '/'
      expect(page).to have_button("login")
    end

    it "greets user and provides logout link if user is logged in" do
      visit '/login'
      fill_in "name", with: "Chewy"
      click_button "login"

      expect(page).to have_content("Hi, Chewy.")
      expect(page).to have_button("logout")
    end
  end

  describe "login page", type: :view do
    before do
      session.delete :name
    end
  end
end
