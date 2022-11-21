class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :address
      t.string :temperament
      t.string :interest
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
