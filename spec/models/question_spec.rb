require 'rails_helper'

RSpec.describe Question, type: :model do
	it "has a valid factory" do
    expect(build(:question)).to be_valid
	end
	
	let(:question) { build(:question) }

	describe "Validations" do
		it { expect(question).to define_enum_for(:difficulty) }
		it { expect(question).to define_enum_for(:kind) }
		it { expect(question).to validate_presence_of(:value) }
  end
  
  describe "Associations" do
    it { expect(question).to belong_to(:field) }
    it { expect(question).to have_and_belong_to_many(:question_groups) }
  end
end
