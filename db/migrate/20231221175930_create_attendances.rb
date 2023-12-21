class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :student_id
      t.string :date
      t.boolean :presence

      t.timestamps
    end
  end
end
