class CreateSizeUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :size_users do |t|
      t.references :user, index: true
      t.references :size, index: true

      t.timestamps
    end
  end
end
