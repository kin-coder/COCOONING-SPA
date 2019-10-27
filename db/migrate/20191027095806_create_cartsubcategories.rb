class CreateCartsubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :cartsubcategories do |t|
      t.belongs_to :subcategory
      t.belongs_to :cartcategory

      t.timestamps
    end
  end
end
