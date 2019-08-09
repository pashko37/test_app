class Answer < ApplicationRecord
  MIN_ANSWER_LENGTH = 3
  MAX_ANSWER_LENGTH = 125

  belongs_to :question

  CHECK_STATUS = %w[correct incorrect].freeze
  enum check_status: CHECK_STATUS

  validates :matter, presence: true
  validates :matter, length: { minimum: MIN_ANSWER_LENGTH, maximum: MAX_ANSWER_LENGTH }
  validates :check_status, presence: true, inclusion: { in: CHECK_STATUS }
end
