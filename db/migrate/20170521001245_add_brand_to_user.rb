class AddBrandToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :brand, :string
  end
end
