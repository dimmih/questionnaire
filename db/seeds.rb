# Populate database with dummy data
require 'faker'

## Fields
sport = Field.create(name: "Sport")
philosophy = Field.create(name: "Philosophy")

### Answers
answers =  []
15.times do
  answers << Answer.new(value: Faker::Lorem.sentence.delete("."), correct: [true, false].sample)
end

### Easy - Sport
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: sport, kind: :open_question) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: sport, kind: :multiple_choice, answers: answers.sample(3)) }

### Medium - Sport
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: sport, kind: :open_question) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: sport, kind: :multiple_choice, answers: answers.sample(3)) }

### Hard - Sport
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: sport, kind: :open_question) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: sport, kind: :multiple_choice, answers: answers.sample(3)) }

### Easy - Philosophy
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: philosophy, kind: :open_question) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: philosophy, kind: :multiple_choice, answers: answers.sample(3)) }

### Medium - Philosophy
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: philosophy, kind: :open_question) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: philosophy, kind: :multiple_choice, answers: answers.sample(3)) }

### Hard - Philosophy
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: philosophy, kind: :open_question) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: philosophy, kind: :multiple_choice, answers: answers.sample(3)) }
