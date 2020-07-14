require 'rails_helper'

RSpec.describe 'Fire Nation search spec', type: :feature do
  describe 'As a user when I visit the root page and select Fire Nation' do
    it "shows count of Fire Nation members" do
      visit '/'

      select "Fire Nation", :from => 'nation'
      click_button "Search For Members"

      expect(page).to have_content("Members in Fire Nation: 20")
    end

    it "shows the names of members of fire nation" do
      visit search_path

      within(".airbenders") do
        expect(page).to have_css(".airbender", count: 20)
      end 
      within(".airbenders") do
        expect(page).to have_css(".airbender-name", count: 20)
      end
    end
  end 
end 