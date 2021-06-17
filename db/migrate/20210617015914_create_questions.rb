class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question
      t.text :answers
      t.integer :correct
      t.integer :question_id

      t.timestamps
    end
  end
end
