class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true
      t.string :comment
      t.datetime :schedule_date

      t.timestamps
    end
  end
end
