class ChangeStudentsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :teacher
    add_column :students, :teacher_id, :integer
  end
end
