class CreateFieldsGrantsJoinTable < ActiveRecord::Migration
  def change
      create_table :fields_grants, id: false do |t|
          t.integer :grant_id
          t.integer :field_id
        end
  end
end
