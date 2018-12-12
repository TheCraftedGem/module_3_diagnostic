require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end
end

RSpec.describe 'api call' do
  it "can locate stations" do 
      zip = 80203

      visit "/"
      
      fill_in :q, with: zip
      click_on "Locate"

      expect(current_path).to eq("/search")
      expect(page).to have_content("Here are the 10 closest stations within 6 miles")
    end
  end



# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times```
