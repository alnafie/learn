class AddRefs < ActiveRecord::Migration

	def change

	  	add_column :ads, :user_id, :integer

	    add_column :comments, :ad_id, :integer
	    add_column :comments, :user_id, :integer

	    add_column :photos, :ad_id, :integer
	    add_column :photos, :user_id, :integer

	    add_column :favorites, :ad_id, :integer
	    add_column :favorites, :user_id, :integer

	    #indexes

	    add_index :ads, :user_id

	    add_index :comments, :ad_id
	    add_index :comments, :user_id

	    add_index :photos, :ad_id
	    add_index :photos, :user_id

	    add_index :favorites, :ad_id
	    add_index :favorites, :user_id

	end

end
