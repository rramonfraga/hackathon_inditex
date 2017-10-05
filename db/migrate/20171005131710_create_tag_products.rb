class CreateTagProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_products do |t|
      t.references :tag, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
