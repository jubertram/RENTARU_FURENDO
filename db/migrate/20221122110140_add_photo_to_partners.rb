class AddPhotoToPartners < ActiveRecord::Migration[7.0]
  def change
    add_column :partners, :photo_url, :string
  end
end
