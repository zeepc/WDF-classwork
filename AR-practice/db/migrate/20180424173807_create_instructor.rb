class CreateInstructor < ActiveRecord::Migration[5.2]
  def change
  	create_table :instructors do |t|
  		t.string :name
  		t.integer :age
  		t.string :years_exp
  	end
  end
end
