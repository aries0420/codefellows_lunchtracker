class CreateDailylunches < ActiveRecord::Migration
  def change
    create_table :dailylunches do |t|
      t.date :date
      t.time :lunch_time
      t.string :lunch
      t.string :description

      t.timestamps
    end
  end
end
