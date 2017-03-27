require 'stripe'

class UpdatePlansFromStripe

  def initialize
    Stripe.api_key = ENV["stripe_api_key"]
  end

  def call
    res = Stripe::Plan.list.data
    res.each do |plan|
      freq = :monthly if plan.interval == "month"
      Plan.create(name: plan.name, frequency: freq, price: plan.amount)
    end
  end
end