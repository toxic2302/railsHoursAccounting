class AddWorkingHoursToWorkdays < ActiveRecord::Migration[5.0]
  def change
    add_column :workdays, :workingHours, :integer
  end
end
