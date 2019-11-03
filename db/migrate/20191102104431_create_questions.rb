class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :value
      t.integer :difficulty
      t.integer :kind

      t.timestamps
    end
  end
end
