class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :ip_address
      t.integer :questions_completed
      t.integer :questions_correct

      t.timestamps
    end
  end
end
