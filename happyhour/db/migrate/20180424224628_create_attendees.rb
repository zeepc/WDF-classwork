class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
  	create_table :attendees do |t|
  		t.string :name
  		t.string :last_name
  		t.integer :age
  		t.boolean :likes_beer
  	end
  end
end
