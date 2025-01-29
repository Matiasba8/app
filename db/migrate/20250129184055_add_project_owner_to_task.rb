class AddProjectOwnerToTask < ActiveRecord::Migration[8.0]
  def change
    add_reference :tasks, :project, index: true
  end
end
