require 'rails_helper'

RSpec.describe "merchants index" do
  it "shows all merchant names which link to their show page", :vcr do
    
    visit "/merchants"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Glover Inc")

    expect("Schroeder-Jerde").to appear_before("Klein, Rempel and Jones")
    expect("Klein, Rempel and Jones").to appear_before("Willms and Sons")
    expect("Willms and Sons").to appear_before("Cummings-Thiel")
   end
   
  it 'has a link to each merchants show page' do 
    
    visit "/merchants"

    click_link "Schroeder-Jerde"
    expect(current_path).to eq("/merchants/1")
    
  end
end