class CreateTimeslots < ActiveRecord::Migration[6.0]
  def change
    create_table :timeslots do |t|
      t.time :creneau
      t.belongs_to :cart, index: true
      t.timestamps
    end
  end
end
