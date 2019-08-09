class Quiz < ApplicationRecord
  has_many :questions
  has_and_belongs_to_many :user

  MAX_QUIZ_TITLE_LENGTH = 25
  MAX_QUIZ_DESC_LENGTH = 25

  validates :title, presence: true
  validates :title, length: { maximum: MAX_QUIZ_TITLE_LENGTH }
  validates :desc, presence: true
  validates :desc, length: { maximum: MAX_QUIZ_DESC_LENGTH }
end
