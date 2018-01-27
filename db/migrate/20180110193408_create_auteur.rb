class CreateAuteur < ActiveRecord::Migration[5.1]
  def change
    create_table :auteurs do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
    end
  end
end
