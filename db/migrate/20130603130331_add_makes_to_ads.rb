class AddMakesToAds < ActiveRecord::Migration
  def change
    add_column :ads, :make, :string
  end
end
