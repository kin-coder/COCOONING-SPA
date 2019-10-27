class CreateCartcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :cartcategories do |t|
      t.belongs_to :category, index: true
      t.belongs_to :cart, index: true


      t.timestamps
    end
  end
end
