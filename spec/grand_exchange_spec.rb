require "spec_helper"
require "grand_exchange"

RSpec.describe Runescape::GrandExchange::GrandExchange do
  it "can fetch valid runedate" do
    ge = Runescape::GrandExchange::GrandExchange.runedate
    expect(ge.runedate).to be_kind_of(Integer)
  end
end
