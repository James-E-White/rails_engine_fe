require "rails_helper"

describe Merchant do
  it "exists and has attributes" do
      attributes = {
      id: 2,
      attributes: {
        name: "Joes"
      }
    }
     merchant = Merchant.new(attributes)

     expect(merchant).to be_a(Merchant)
     expect(merchant.id).to eq(2)
     expect(merchant.name).to eq("Joes")

  end
end