class AddLatitudeColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :latitude, :float
  end
end
