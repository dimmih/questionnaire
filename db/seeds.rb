# Populate database with dummy data
require 'faker'

## Fields
sport = Field.create(name: "Sport")
medicine = Field.create(name: "Medicine")
philosophy = Field.create(name: "Philosophy")

### Easy - Sport
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: sport, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: sport, kind: :yes_no) }

### Medium - Sport
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: sport, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: sport, kind: :yes_no) }

### Hard - Sport
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: sport, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: sport, kind: :yes_no) }

### Easy - Medicine
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: medicine, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: medicine, kind: :yes_no) }

### Medium - Medicine
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: medicine, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: medicine, kind: :yes_no) }

### Hard - Medicine
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: medicine, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: medicine, kind: :yes_no) }

### Easy - Philosophy
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: philosophy, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :easy, field: philosophy, kind: :yes_no) }

### Medium - Philosophy
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: philosophy, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :medium, field: philosophy, kind: :yes_no) }

### Hard - Philosophy
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: philosophy, kind: :text) }
5.times { Question.create(value: Faker::Lorem.sentence.delete("."), difficulty: :hard, field: philosophy, kind: :yes_no) }
