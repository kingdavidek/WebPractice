class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
    	#Bascially this is saying, for each element in the table, have these columns:
      t.string :todo_item  #this was specified when creating the controller

      t.timestamps  #i think this is a default
    end
  end
end
