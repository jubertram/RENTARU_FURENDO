class AddCoordinatesToPartners < ActiveRecord::Migration[7.0]
  def change
    add_column :partners, :latitude, :float
    add_column :partners, :longitude, :float
  end
end
