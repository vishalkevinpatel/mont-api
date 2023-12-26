class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :student_id
      t.integer :user_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
