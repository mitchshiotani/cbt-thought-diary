class DiaryEntry < ApplicationRecord
  has_many :de_emotions
  has_many :emotions, through: :de_emotions
  has_many :deut_styles
  has_many :ut_styles, through: :deut_styles
end
