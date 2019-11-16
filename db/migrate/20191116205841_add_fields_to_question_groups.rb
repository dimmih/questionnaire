class AddFieldsToQuestionGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :question_groups, :field, foreign_key: true
    add_column :question_groups, :description, :text
    add_column :question_groups, :easy, :integer
    add_column :question_groups, :medium, :integer
    add_column :question_groups, :hard, :integer
  end
end
