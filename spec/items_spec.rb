require "spec_helper"
require "grand_exchange/items"

RSpec.describe Runescape::GrandExchange::Items do

  it "is a valid spec" do
  end

  it "should return items within that category letter" do
    VCR.use_cassette('list_of_items') do
      items = Runescape::GrandExchange::Items.find_letter(9, 's')
      puts "Inspecting Category Single Letter Items"
      puts "Category: #{items.category} Total Items: #{items.total}"
      puts items.items
      puts "====="
      expect(items.category).to eq(9)
    end
  end

  it "should return all items within category" do
    VCR.use_cassette('list_of_all_items') do
      items = Runescape::GrandExchange::Items.find_all(9)
      puts "Inspecting Category ALL Items"
      puts "Category: #{items.category} Total Items: #{items.total}"
      puts items.items
      puts "====="
      expect(items.category).to eq(9)
    end
  end
end
