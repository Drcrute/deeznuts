class CreateClassTable < ActiveRecord::Migration
  def change
  	create_table :classses do |item|
			item.string :name
			item.string :teacher
			item.integer :user_id
		end
  end
end
