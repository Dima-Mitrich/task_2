class AddColumnUserId < ActiveRecord::Migration[5.1]
  def change
  	add_column :cases, :user_id, :integer
  	add_index  :cases, :user_id
  	add_column :cases, :list_id, :integer
  	add_index  :cases, :list_id
  	add_column :lists, :user_id, :integer
  	add_index  :lists, :user_id 
  end
end
