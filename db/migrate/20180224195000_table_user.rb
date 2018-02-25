class TableUser < ActiveRecord::Migration[5.1]
  def change
  	create_table :users
    add_column :users, :login, :string
    add_column :users, :password, :string
  end
end

