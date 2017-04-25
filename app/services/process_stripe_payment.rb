class ProcessStripePayment

  def new(user_id, token, stripe_plan_id)
    @user = User.find(user_id)
  end

  def call
    customer = Stripe::Customer.create(email: @user.email, card: token)

    Stripe::Subscription.create(customer: customer.id, plan: stripe_plan_id)
  end
end