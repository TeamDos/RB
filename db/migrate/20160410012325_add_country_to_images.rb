class AddCountryToImages < ActiveRecord::Migration
  def change
  	add_column :images, :country, :string
  end
end
