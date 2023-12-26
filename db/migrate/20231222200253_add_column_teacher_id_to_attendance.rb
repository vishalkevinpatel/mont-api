class AddColumnTeacherIdToAttendance < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :teacher_id, :integer
  end
end
