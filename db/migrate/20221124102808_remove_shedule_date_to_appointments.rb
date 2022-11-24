class RemoveSheduleDateToAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :schedule_date
  end
end
