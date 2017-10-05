class CreateSizeProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :size_products do |t|
      t.references :size, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
