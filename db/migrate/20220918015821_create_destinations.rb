class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.references :user, null:false, foreign_key: true
      t.integer :long_distance, null:false
      t.integer :middle_distance, null:false
      t.integer :short_distance, null:false
      t.timestamps
    end
  end
end
