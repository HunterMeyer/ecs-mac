class RecreateVendorsTable < ActiveRecord::Migration
  def change
  	drop_table :vendors
  	create_table :vendors do |t|
  		t.string  :first_name
  		t.string  :last_name
  		t.string  :email
  		t.string  :phone
			t.string  :address
			t.string  :city
			t.string  :state
			t.string  :zip
			t.string  :vendor_name
			t.text    :comments
			t.boolean :speak_topic
			t.boolean :speak_topic_ceu
  	end
  end
end
