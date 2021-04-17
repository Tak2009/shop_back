class CreateCashes < ActiveRecord::Migration[6.0]
  def change
    create_table :cashes do |t|
      t.date :date
      t.integer :bal

      t.timestamps
    end
  end
end
