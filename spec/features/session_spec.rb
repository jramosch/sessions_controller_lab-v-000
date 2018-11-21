require 'rails_helper'

RSpec.feature "Sessions", type: :feature do
  describe "homepage", type: :view do
    before do
      session.clear
    end

    it "shows login link if user is not logged in" do
      visit '/'
      expect(page).to have_link("login")
    end
  end

end
