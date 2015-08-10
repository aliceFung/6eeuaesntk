require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
describe User do

  let(:user){build(:user)}

    it "has a useramen between 6 and 20 characters" do
      user = build(:user, username: "abcbd")
      expect(user).to_not be_valid

      user = build(:user, username: "123456")
      expect(user).to be_valid

      str= "foobar"*5
      user = build(:user, username: str)
      expect(user).to_not be_valid

      str= "foob"*5
      user = build(:user, username: str)
      expect(user).to be_valid
    end

end
