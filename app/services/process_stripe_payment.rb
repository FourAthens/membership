class ProcessStripePayment

  def initialize(user_id, token, stripe_plan_id)
    @user = User.find(user_id)
    @token = token
    @stripe_plan_id = stripe_plan_id
    Stripe.api_key = ENV['stripe_secret_key']
  end

  def call
    customer = Stripe::Customer.create(email: @user.email, card: @token)

    Stripe::Subscription.create(customer: customer.id, plan: @stripe_plan_id)
  end
end