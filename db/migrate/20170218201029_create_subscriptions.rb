class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.references :profile, foreign_key: true
      t.references :plan, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
