class CreateProfileTable < ActiveRecord::Migration
  def change
  	create_table :profile do |item|
			item.string :fname
			item.string :lname
			item.integer :user_id
		end
  end
end
