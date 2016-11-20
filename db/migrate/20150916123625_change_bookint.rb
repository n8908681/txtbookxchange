class ChangeBookint < ActiveRecord::Migration
  def change
    change_column :books, :isbn, :bigint
  end
end
