class CreateJoinTableQuestionsQuestionGroups < ActiveRecord::Migration[5.2]
  def change
    create_join_table :questions, :question_groups do |t|
      # t.index [:question_id, :question_group_id]
      # t.index [:question_group_id, :question_id]
    end
  end
end
