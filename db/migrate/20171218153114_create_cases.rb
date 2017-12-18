class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.string :name
      t.string :status
      t.string :description
      t.string :priority
      
      t.timestamps
    end
  end
end
