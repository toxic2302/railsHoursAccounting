class AddIdToWorkday < ActiveRecord::Migration[5.0]
  def change
    add_column :workdays, :company_id, :integer
  end
end
