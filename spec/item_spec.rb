require "spec_helper"
require "grand_exchange/item"

RSpec.describe Runescape::GrandExchange::Item do

  it "is a valid spec" do
  end

  it "should return details for an item" do
    VCR.use_cassette('single_item') do
      item = Runescape::GrandExchange::Item.find(26313)
      puts "Inspecting Item"
      puts item.inspect
      expect(item.name).to eq("Rocktail soup")
      expect(item.description).to eq("A bowl of delicious rocktail soup.")
      expect(item.members).to eq("true")
      expect(item.type).to eq("Food and Drink")
      expect(item.id).to eq(26313)
    end
  end

end
