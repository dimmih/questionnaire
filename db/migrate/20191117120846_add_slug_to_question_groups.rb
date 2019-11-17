class AddSlugToQuestionGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :question_groups, :slug, :string
    add_index :question_groups, :slug, unique: true
  end
end
