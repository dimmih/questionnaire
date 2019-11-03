# Populate database with dummy data

## Fields
sport = Field.create(name: "Sport")
medicine = Field.create(name: "Medicine")
philosophy = Field.create(name: "Philosophy")

## Text questions
question_t1 = Question.create(value: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", difficulty: :easy, field: sport, kind: :text)
question_t2 = Question.create(value: "Sed eget nisl augue. Vivamus pulvinar porta libero, eget tempus velit pellentesque ut", difficulty: :medium, field: sport, kind: :text)
question_t3 = Question.create(value: "Proin eget dui eget massa blandit bibendum ac a ipsum", difficulty: :hard, field: sport, kind: :text)
question_t4 = Question.create(value: "Sed lacinia lobortis dolor id euismod", difficulty: :easy, field: medicine, kind: :text)
question_t5 = Question.create(value: "Nunc a felis non quam molestie vulputate eget a turpis", difficulty: :medium, field: medicine, kind: :text)
question_t5 = Question.create(value: "Maecenas id ex ut quam consequat tempor", difficulty: :hard, field: medicine, kind: :text)

## Yes/No questions
question_y1 = Question.create(value: "Vestibulum vulputate lectus non justo semper elementum", difficulty: :easy, field: philosophy, kind: :yes_no)
question_y2 = Question.create(value: "Curabitur molestie neque quis justo tempus facilisis", difficulty: :medium, field: philosophy, kind: :yes_no)
question_y3 = Question.create(value: "Morbi at condimentum sem, ac dictum massa", difficulty: :hard, field: philosophy, kind: :yes_no)
question_y4 = Question.create(value: "Praesent dapibus arcu sit amet massa eleifend tempus", difficulty: :easy, field: medicine, kind: :yes_no)
question_y5 = Question.create(value: "Aenean turpis nulla, suscipit condimentum tincidunt a, scelerisque nec leo", difficulty: :medium, field: medicine, kind: :yes_no)
question_y6 = Question.create(value: "Curabitur quis semper nisi", difficulty: :hard, field: medicine, kind: :yes_no)