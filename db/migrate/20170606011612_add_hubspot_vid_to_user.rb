class AddHubspotVidToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :hubspot_vid, :integer
  end
end
