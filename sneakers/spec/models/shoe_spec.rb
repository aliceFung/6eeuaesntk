require 'rails_helper'

RSpec.describe Shoe, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Shoe do

  let(:shoe){build(:shoe)}


  it "with all fields completed is valid" do
    expect(shoe).to be_valid
  end



  it "cannot be nil" do
    shoe = build(:shoe, brand: nil)
    expect(shoe).to_not be_valid
  end

  it "cannot be nil" do
    shoe = build(:shoe, year: nil)
    expect(shoe).to_not be_valid
  end


  it "cannot be nil" do
    shoe = build(:shoe, purchase_date: nil)
    expect(shoe).to_not be_valid
  end
  it "cannot be nil" do
    shoe = build(:shoe, year: nil)
    expect(shoe).to_not be_valid
  end


end