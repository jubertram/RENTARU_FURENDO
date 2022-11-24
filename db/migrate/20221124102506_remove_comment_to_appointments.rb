class RemoveCommentToAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :comment
  end
end
