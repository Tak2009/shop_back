class CreatePurchasessimulations < ActiveRecord::Migration[6.0]
  def change
    create_table :purchasessimulations do |t|
      t.date :date1
      t.date :date2
      t.references :bicycle, null: false, foreign_key: true
      t.integer :qtybought
      t.integer :valuebought
      t.date :finishdate

      t.timestamps
    end
  end
end
