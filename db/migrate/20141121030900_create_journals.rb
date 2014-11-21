class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.integer :weather
      t.integer :food
      t.integer :mood
      t.string :comment

      t.timestamps
    end
  end
end
