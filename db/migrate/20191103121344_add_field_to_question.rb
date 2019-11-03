class AddFieldToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :field, foreign_key: true
  end
end
