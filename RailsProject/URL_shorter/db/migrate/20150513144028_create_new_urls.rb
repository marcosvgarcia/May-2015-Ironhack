class CreateNewUrls < ActiveRecord::Migration
  def change
    create_table :new_urls do |t|

    	t.string :url
    	t.integer :visit, default: 0

    	t.timestamps null: false
    end
  end
end
