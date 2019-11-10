require 'rails_helper'

RSpec.describe QuestionGroup, type: :model do
  it "has a valid factory" do
    expect(build(:question_group)).to be_valid
  end
  
  let(:question_group) { build(:question_group) }

  describe "Validations" do
		it { expect(question_group).to validate_presence_of(:name) }
  end

  describe "Associations" do
    it { expect(question_group).to have_and_belong_to_many(:questions) }
  end
end
