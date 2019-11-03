require 'rails_helper'

RSpec.describe Field, type: :model do
  it "has a valid factory" do
    expect(build(:field)).to be_valid
  end
  
  let(:field) { build(:field) }

	describe "Validations" do
		it { expect(field).to validate_presence_of(:name) }
  end
  
  describe "Associations" do
    it { expect(field).to have_many(:questions) }
  end
end
