class AddPaidColumnToAttendees < ActiveRecord::Migration
  def change
  	add_column :attendees, :paid, :date
  end
end
