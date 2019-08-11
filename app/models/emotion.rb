class Emotion < ApplicationRecord
  has_many :de_emotions
  has_many :diary_entries, through: :de_emotions
end
