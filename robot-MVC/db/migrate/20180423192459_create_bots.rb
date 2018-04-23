class CreateBots < ActiveRecord::Migration[5.2]
  def change
  	create_table :bots do |t|
  		t.string :name
  		t.integer :power_level
  		t.boolean :angry
  	end
  end
end
