# Questionnaire

PDF questionnaire generator based on LaTeX focused only on questions and answers.

## Features
  * **Questions** - Two types of questions are supported: multiple choice and open questions. They can be an easy, medium or hard. For multiple-choice questions, you can define as many answers as you want, correct or incorrect. For open questions, only one correct answer can be defined.
  * **Fields** - Group your questions inside certain fields.
  * **Questionnaires** - Pick from which field you want your questions to come from. Define title and description and pick how many easy, medium and the hard question there will be. For each difficulty, questions are randomly picked. Once a questionnaire is generated you can download PDFs with only correct or with all possible answers.

---

## Installation
Requirements are:
  * [Ruby 2.6.5](https://www.ruby-lang.org/en/downloads/)
  * [Rails 5.2.3](https://www.ruby-lang.org/en/downloads/)
  * [Postgres](https://www.postgresql.org/download/)
  * [LaTeX](https://www.latex-project.org/get/)

### Getting started
Once you have installed all [prerequisites](#installation)

```bash
# Checkout the project
$ git clone path/to/this/repo
$ cd questionnaire

# Install the program dependencies
$ bundle install

# Setup the development database
cp config/database.yml.example config/database.yml
## Change your_username and your_password to your Postgres credentials inside config/database.yml file

## Create and migrate a database
bundle exec rails db:create db:migrate

## OPTIONAL: Seed database with dummy data
bundle exec rails db:seed

# Start the local webserver
bundle exec rails server
```

You should then be able to navigate to `http://localhost:3000/` in a web browser.

---

## Customization

### Add new PDF style
If you want to add a new style for your PDFs, you will need to follow the next five steps.

*First step* - Add a new file inside the `app/views/layouts` folder and name it as you wish. The first requirement for this file is to have `.pdf.erbtex` extension. In this file, you can define your commands, add packages, etc. The second requirement is to have 
```ruby
\begin{document}
  <%= yield %>
\end{document}
```
block of code at the end of the file. You can look into `app/views/layouts/application.pdf.erbtex` for reference.

*Second step* - Add new method inside `app/controllers/question_groups_controller.rb` class. Method body will look something like this
```ruby
@question_group = QuestionGroup.friendly.find(params[:id])

render layout: "your_awesome_layout", formats: [:pdf]
```
where `your_awesome_layout` will be layout file name that you created in step above. For reference see `standard` method inside `app/controllers/question_groups_controller.rb` class.

*Third step* -  Inside `config/routes.rb` file add `get :your_cool_method` on line 7, bellow `get :correct_answers`. It will look something like this
```ruby
member do
  get :standard
  get :correct_answers
  get :your_cool_method
end
```

*Fourth step* - Add new file inside `app/views/question_groups` folder, name it exactly like `your_cool_method.pdf.rb` where `your_cool_method` is a method you defined in the step above. Inside this file, you will need to have
```ruby
<% @question_group.questions.each do |question| %>
  <% if question.open_question? %>
    # Here you will define open questions
    ## To use question titles with question mark use question.value_qm
  <% elsif question.multiple_choice? %>
    # Here you will define multiple choice questions
    ## To iterate through all answers you can use
    ##  question.answers.each do |answer|
    ##  end
    ## block, where answer.value will be answer title. 
  <% end %>
<% end %>
```
For reference use `app/views/question_groups/standard.pdf.erb` or `app/view/question_groups/correct_answers.pdf.erb` for PDF with only correct answers.

*Fifth step* - Inside `app/views/question_groups/index.html.erb` file add `<%= link_to "Your cool method", your_cool_method_question_group_path(question_group), target: "_blank" %>` inside div with class "card-footer". You can see links for standard and correct answers PDFs inside this file for reference. This link will be visible on `http://localhost:3000/question_groups` page.

### Customize existing style
If you don't want to do all this, you can customize an existing style. You will only need to change `app/views/layouts/application.pdf.erbtex`, `app/views/question_groups/standard.pdf.erb`, `app/views/question_groups/correct_answers.pdf.erb` file to implement your new changes.