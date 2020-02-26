class ChangeFieldsInBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :date_from
    add_column :bookings, :date_from, :date
    remove_column :bookings, :date_to
    add_column :bookings, :date_to, :date
  end
end
