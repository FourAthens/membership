class CreatePlanDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_details do |t|
      t.references :plan, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
