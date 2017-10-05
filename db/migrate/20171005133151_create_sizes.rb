class CreateSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :sizes do |t|
      t.string :type
      t.string :symbol
      t.string :number

      t.timestamps
    end
  end
end
