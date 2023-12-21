class AddDefaultToPresence < ActiveRecord::Migration[7.0]
  def change
    change_column_default :attendances, :presence, from: nil, to: false
  end
end
