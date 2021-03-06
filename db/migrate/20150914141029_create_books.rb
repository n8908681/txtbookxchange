class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :title
      t.string :author
      t.boolean :owned
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :books, [:user_id, :created_at]
  end
end
