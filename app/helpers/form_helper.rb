module FormHelper
  def setup_de(diary_entry)
    (Emotion.all - diary_entry.emotions).each do |emotion|
      diary_entry.de_emotions.build(emotion: emotion)
    end
    diary_entry.de_emotions.sort_by { |x| x.emotion.name }

    diary_entry
  end
end
