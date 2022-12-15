require "rails_helper"

describe "merchant show page" do

    describe "when i visit the merchant show page" do
      it "i see a list of items that that merchant sells", :vcr do

        visit "/merchants/1"
     
        expect(page).to have_content("Item Nemo Facere")

      end
    end
end