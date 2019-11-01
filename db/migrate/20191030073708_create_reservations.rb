class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :service, index: true
      t.belongs_to :client, index: true

      t.timestamps
    end
  end
end
