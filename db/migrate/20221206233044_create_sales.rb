class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.date :date_name
      t.integer :price
      t.integer :quantity
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
