class CreateDepartmentproviders < ActiveRecord::Migration[6.0]
  def change
    create_table :departmentproviders do |t|
      t.belongs_to :department, index: true
      t.belongs_to :provider, index: true
      
      t.timestamps
    end
  end
end
