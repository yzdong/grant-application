class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
        t.string "field1"
        t.string "field2"
        t.string "field3"
      t.timestamps
    end
  end
end
