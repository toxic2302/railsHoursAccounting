class CreateWorkdays < ActiveRecord::Migration[5.0]
  def change
    create_table :workdays do |t|
      t.date :day
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
