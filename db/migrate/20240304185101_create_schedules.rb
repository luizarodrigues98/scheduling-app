class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.date :date
      t.string :local
      t.time :time

      t.timestamps
    end
  end
end
