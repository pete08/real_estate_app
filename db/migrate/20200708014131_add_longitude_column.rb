class AddLongitudeColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :longitude, :float
  end
end
