require "spec_helper"

RSpec.describe Runescape do
  it "has a version number" do
    expect(Runescape::VERSION).not_to be nil
  end
end
