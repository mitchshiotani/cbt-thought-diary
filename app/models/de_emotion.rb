class DeEmotion < ApplicationRecord
  belongs_to :emotion
  belongs_to :diary_entry
end
