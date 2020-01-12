class Question < ApplicationRecord
	enum difficulty: [:easy, :medium, :hard]
	enum kind: [:multiple_choice, :open_question]

  belongs_to :field
  has_and_belongs_to_many :question_groups
  has_many :answers, inverse_of: :question
  accepts_nested_attributes_for :answers, 
                                allow_destroy: true, 
                                reject_if: proc { |att| att['value'].blank? }

  validates :value, presence: true

  # with question mark
  def value_qm
    value << "?"
  end
end
