class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :cc_exp_month
      t.string :cc_exp_year
      t.string :last_four_digits
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :stripe_customer_id
      t.string :stripe_token
      t.references :profileable, polymorphic: true

      t.timestamps
    end
  end
end
