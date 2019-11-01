class CreateTimeslots < ActiveRecord::Migration[6.0]
  def change
    create_table :timeslots do |t|
      t.time :date
      t.belongs_to :reservation, index: true
      
      t.timestamps
    end
  end
end
