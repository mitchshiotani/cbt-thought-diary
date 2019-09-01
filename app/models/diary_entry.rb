class DiaryEntry < ApplicationRecord
  has_many :de_emotions
  has_many :emotions, through: :de_emotions
  has_many :deut_styles
  has_many :ut_styles, through: :deut_styles

  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[a c b d e]
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step) - 1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end
end
