class CreatePermit < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.string :file_number
      t.string :api_number
      t.string :operator_name
      t.string :township
      t.string :township_bearing
      t.string :range
      t.string :range_bearing
      t.string :section
      t.string :state
      t.string :field_name
      t.string :effective_on
      t.string :action_type
      t.string :slant

      t.timestamps
    end
  end
end
