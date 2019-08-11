class UtStyle < ApplicationRecord
  has_many :deut_styles
  has_many :diary_entries, through: :deut_styles
end
