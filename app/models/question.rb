class Question < ApplicationRecord
	enum difficulty: [:easy, :medium, :hard]
	enum kind: [:text, :yes_no, :multiple_choice]

  belongs_to :field

  validates :value, presence: true

  # with question mark
  def value_qm
    value << "?"
  end
end
