class AddDateObjectToAttendeesPaid < ActiveRecord::Migration
  def change
  	remove_column :attendees, :paid
  	add_column    :attendees, :paid, :date
  end
end
