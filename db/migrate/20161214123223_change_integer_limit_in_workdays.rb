class ChangeIntegerLimitInWorkdays < ActiveRecord::Migration[5.0]
    def change
      change_column :workdays, :workingHours, :integer, limit: 8
    end
end
