class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :teacher
      t.integer :user_id
      t.string :image_url

      t.timestamps
    end
  end
end
