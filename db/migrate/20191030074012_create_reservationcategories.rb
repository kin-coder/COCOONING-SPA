class CreateReservationcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :reservationcategories do |t|
      t.belongs_to :category, index: true
      t.belongs_to :reservation, index: true

      t.timestamps
    end
  end
end
