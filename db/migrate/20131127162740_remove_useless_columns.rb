class RemoveUselessColumns < ActiveRecord::Migration
  def change
  	remove_column :attendees, :concerns
  	remove_column :attendees, :pull_out
  end
end
