class RenameCompletedAttrToBoolean < ActiveRecord::Migration[8.0]
  def change
    change_column(:tasks, :completed, :boolean)
  end
end
