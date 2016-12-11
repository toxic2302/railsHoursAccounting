class AddProjectIdToWorkdays < ActiveRecord::Migration[5.0]
  def change
    add_column :workdays, :project_id, :integer
  end
end
