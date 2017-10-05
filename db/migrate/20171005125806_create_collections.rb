class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.datetime :date
      t.references :product, index: true


      t.timestamps
    end
  end
end
