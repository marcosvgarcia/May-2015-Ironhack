class CreatePhonenumbers < ActiveRecord::Migration
  def change
    create_table :phonenumbers do |t|

    	t.integer :contact_id
    	t.integer :phonenumber

    	t.timestamps null: false
    end
  end
end
