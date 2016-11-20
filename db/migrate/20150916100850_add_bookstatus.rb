class AddBookstatus < ActiveRecord::Migration
  def change
    add_column :books, :bookstatus, :string
  end
end
