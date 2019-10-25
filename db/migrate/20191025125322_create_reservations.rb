class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :creneau

      t.timestamps
    end
  end
end
