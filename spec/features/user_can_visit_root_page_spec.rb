require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end

  it "can do something" do 
  
    visit "/"
    
    fill_in search form with: 80203 (Note: Use the existing search form)
    click_on "Locate"

    expect(current_path).to be("/search")
    expect(page).to have_content("Here are the 10 closest stations within 6 miles")
  end
end


# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times```
