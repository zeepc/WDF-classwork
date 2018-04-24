class CreateTa < ActiveRecord::Migration[5.2]
  def change
  	create_table :ta do |t|
  		t.string :name
  		t.integer :level
  		t.integer :course_id
  	end
  end
end
