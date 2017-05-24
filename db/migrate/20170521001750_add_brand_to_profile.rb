class AddBrandToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :brand, :string
  end
end
