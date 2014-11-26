class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :latitude
      t.string :longitude
      t.references :user, index: true

      t.timestamps
    end
  end
end
