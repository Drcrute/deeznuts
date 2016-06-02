class CreateNotesTable < ActiveRecord::Migration
  def change
  	create_table :notes do |item|
			item.string :notes
			item.integer :user_id
		end
  end
end
