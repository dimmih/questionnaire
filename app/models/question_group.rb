class QuestionGroup < ApplicationRecord
  belongs_to :field
  has_and_belongs_to_many :questions

  validates :name, presence: true
  validate :valid_easy_max_size
  validate :valid_medium_max_size
  validate :valid_hard_max_size

  before_create :generate_questions

  private

  # Validators

  def valid_easy_max_size
    max_size = field.questions.easy.count > 15 ? 15 : field.questions.easy.count
    errors.add(:base, "Max size for easy questions is #{max_size}") if easy > max_size
  end

  def valid_medium_max_size
    max_size = field.questions.medium.count > 15 ? 15 : field.questions.medium.count
    errors.add(:base, "Max size for medium questions is #{max_size}") if medium > max_size
  end

  def valid_hard_max_size
    max_size = field.questions.hard.count > 15 ? 15 : field.questions.hard.count
    errors.add(:base, "Max size for hard questions is #{max_size}") if hard > max_size
  end

  # Callbacks

  def generate_questions
    questions << field.questions.easy.order('RANDOM()').limit(easy)
    questions << field.questions.medium.order('RANDOM()').limit(medium)
    questions << field.questions.hard.order('RANDOM()').limit(hard)
  end
end
