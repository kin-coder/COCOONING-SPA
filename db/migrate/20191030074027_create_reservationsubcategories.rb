class CreateReservationsubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :reservationsubcategories do |t|
      t.belongs_to :subcategory, index: true
      t.belongs_to :reservationcategory, index: true

      t.timestamps
    end
  end
end
