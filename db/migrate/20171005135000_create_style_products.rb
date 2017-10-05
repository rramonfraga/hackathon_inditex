class CreateStyleProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :style_products do |t|
      t.references :product, index: true
      t.references :style, index: true

      t.timestamps
    end
  end
end
