class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.date :date1
      t.date :date2
      t.references :bicycle, null: false, foreign_key: true
      t.integer :qtysold
      t.integer :valuesold
      t.integer :costsold

      t.timestamps
    end
  end
end
