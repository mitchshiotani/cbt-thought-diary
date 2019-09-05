# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating emotions...'

angry_array = ['frustrated',
'cross',
'irritated',
'annoyed',
'furious',
'livid',
'enraged',
'hurt',
'inadequate',
'trapped',
'tired',
'scared'
]


negative_array = ['distrustful',
'suspicious',
'scornful',
'disdain',
'bitter',
'stupid',
'shame',
'worthless']

uneasy_array = %w[nervous tense anxious flustered insecure angry cross confused bored flat apathetic weak]

frightened_array = %w[uneasy weak insecure inadequate tense anxious nervous scared petrified threatened trapped horrified]

happy_array = %w[pleased glad wonderful elated excited content surprised proud relieved satisfied confident]

positive_array = %w[determined forgiving hopeful motivated inspired daring energetic loving eager excited receptive happy]

confused_array = %w[hurt upset lonely inadequate cross miserable shocked mixed-up nervous scared discontented foolish surprised uneasy trapped]


angry_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Angry')
end

negative_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Negative')
end

uneasy_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Uneasy')
end

frightened_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Frightened')
end

happy_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Happy')
end

positive_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Positive')
end

confused_array.each do |feeling|
  Emotion.create(name: feeling, category: 'Confused')
end

puts 'Emotions created!'






