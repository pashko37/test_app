class Question < ApplicationRecord
  has_many :answers
	belongs_to :quiz

  MIN_QUESTION_LENGTH = 3
  MAX_QUESTION_LENGTH = 25

  validates :matter, presence: true
  validates :matter, length: { minimum: MIN_QUESTION_LENGTH, maximum: MAX_QUESTION_LENGTH }
end
