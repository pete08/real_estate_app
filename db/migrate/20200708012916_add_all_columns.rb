class AddAllColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :description, :text
    add_column :listings, :year_built, :integer
    add_column :listings, :square_feet, :integer
    add_column :listings, :bedrooms, :integer
    add_column :listings, :bathrooms, :decimal, precision: 4, scale: 2
    add_column :listings, :floors, :integer
    add_column :listings, :availability, :boolean
    add_column :listings, :price, :decimal, precision: 9, scale: 0
    add_column :listings, :address, :string
  end
end
