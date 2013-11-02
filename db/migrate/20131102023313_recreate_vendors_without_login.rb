class RecreateVendorsWithoutLogin < ActiveRecord::Migration
  def change
    drop_table :vendors
    create_table :vendors do |t|
    	t.string :first_name 
    	t.string :last_name 
    	t.string :email
    	t.string :phone
    	t.string :address
    	t.string :city
    	t.string :state
    	t.string :zip
    	t.string :industry
    	t.string :pull_out
    	t.text   :concerns
    	t.text   :questions
    end
  end
end
