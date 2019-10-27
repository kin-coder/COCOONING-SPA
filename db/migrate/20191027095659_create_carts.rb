class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :service, index: true
      t.timestamps
    end
  end
end
