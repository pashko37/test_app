class Answer < ApplicationRecord
  MIN_ANSWER_LENGTH = 3
  MAX_ANSWER_LENGTH = 25

  belongs_to :question

  validates :matter, presence: true
  validates :matter, length: { minimum: MIN_ANSWER_LENGTH, maximum: MAX_ANSWER_LENGTH }
end
