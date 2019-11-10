class QuestionGroup < ApplicationRecord
  attr_accessor :field_id, :easy, :medium, :hard
  
  has_and_belongs_to_many :questions

  validates :name, presence: true
end
