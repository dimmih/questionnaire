# Populate database with dummy data
require 'faker'

## Fields
sport = Field.create(name: "Sport")
philosophy = Field.create(name: "Philosophy")

### Easy - Sport
5.times do
  correct_answer = Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: sport, kind: :open_question, answers: [correct_answer]) 
end
5.times do
  answers = []
  5.times { answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample) }
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: sport, kind: :multiple_choice, answers: answers)
end

### Medium - Sport
5.times do
  correct_answer = Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: sport, kind: :open_question, answers: [correct_answer])
end
5.times do
  answers = []
  5.times { answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample) }
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: sport, kind: :multiple_choice, answers: answers)
end

### Hard - Sport
5.times do
  correct_answer = Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: sport, kind: :open_question, answers: [correct_answer])
end
5.times do
  answers = []
  5.times { answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample) }
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: sport, kind: :multiple_choice, answers: answers)
end

### Easy - Philosophy
5.times do
  correct_answer = Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: philosophy, kind: :open_question, answers: [correct_answer])
end
5.times do
  answers = []
  5.times { answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample) }
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: philosophy, kind: :multiple_choice, answers: answers)
end

### Medium - Philosophy
5.times do
  correct_answer = Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: philosophy, kind: :open_question, answers: [correct_answer])
end
5.times do
  answers = []
  5.times { answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample) }
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: philosophy, kind: :multiple_choice, answers: answers)
end

### Hard - Philosophy
5.times do
  correct_answer = Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: philosophy, kind: :open_question, answers: [correct_answer])
end
5.times do
  answers = []
  5.times { answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample) }
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: true)
  Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: philosophy, kind: :multiple_choice, answers: answers)
end
