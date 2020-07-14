require 'rails_helper'

RSpec.describe 'Fire Nation search spec', type: :feature do
  describe 'As a user when I visit the root page and select Fire Nation' do
    it "shows count of Fire Nation members" do
      visit '/'

      select "Fire Nation", :from => 'nation'
      click_button "Search For Members"

      # expect(page).to have_css(".github")
      expect(page).to have_content("Members in Fire Nation: 20")
    end

    # it "can see the name of five of my repositories with links to their repos on github", :vcr do
    #   within(".github") do
    #     expect(page).to have_css(".repo", count: 5)
    #     within(first(".repo")) do
    #       expect(page).to have_css(".repo-link")
    #     end 
    #   end
    # end

    # it "can see all of my bookmarked segments", :vcr do
    #   within(".bookmarked") do
    #     expect(page).to have_css(".tutorial", count: 3)
    #     within(first(".tutorial")) do
    #       expect(page).to have_css(".tutorial-video", count: 1)
    #     end 
    #   end
    # end
  end 
end 