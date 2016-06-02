class CreateUserClassesTable < ActiveRecord::Migration
  def change
  	create_table :user_classes do |item|
  			item.integer :user_id
  			item.integer :class_id
  		end
  end
end
