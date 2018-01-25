class CreateUtilisateurs < ActiveRecord::Migration[5.1]
  def change
    create_table :utilisateurs do |t|
    	t.string :login
    	t.string :pw
    	t.string :firstName
     	t.string :lastName
    	t.date :birthday
    end
  end
end



