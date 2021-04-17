class CreateBicycles < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycles do |t|
      t.string :bitype
      t.integer :qty
      t.integer :uprice
      t.integer :ucost

      t.timestamps
    end
  end
end
