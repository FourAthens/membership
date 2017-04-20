class AddHrefToPlanDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :plan_details, :href, :string, default: ""
  end
end
