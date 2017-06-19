require "spec_helper"
require "grand_exchange/category"

RSpec.describe Runescape::GrandExchange::Category do

  it "is a valid spec" do
  end

  it "should return alphabet contents of category" do
    VCR.use_cassette('single_category') do
      category = Runescape::GrandExchange::Category.find(9)
      puts "Inspecting Category"
      puts category.inspect
      puts "====="
    end
  end

end
