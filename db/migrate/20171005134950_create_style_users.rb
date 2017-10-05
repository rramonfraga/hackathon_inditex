class CreateStyleUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :style_users do |t|
      t.references :user, index: true
      t.references :style, index: true

      t.timestamps
    end
  end
end
