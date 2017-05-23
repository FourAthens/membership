class AddStripePlanIdToPlan < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :stripe_plan_id, :string
  end
end
