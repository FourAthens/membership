class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new
    @organization.build_profile
  end

  def create
    @organization = Organization.new(secure_params)
    @profile = @organization.create_profile
    @plan = Plan.find_by(id: params[:plan_id])
    if @organization.save!
      response = ProcessStripePayment.new(current_user.id, params[:token], @plan.stripe_plan_id).call
      Subscription.create(profile_id: @profile.id, plan_id: @plan.id, status: response.status)
      @profile.update(stripe_customer_id: response.customer, cc_exp_month: params[:organization][:profile_attributes][:cc_exp_month], cc_exp_year: params[:organization][:profile_attributes][:cc_exp_year], street_address: params[:organization][:profile_attributes][:street_address], city: params[:organization][:profile_attributes][:city], state: params[:organization][:profile_attributes][:state], zip_code: params[:organization][:profile_attributes][:zip_code])
      current_user.update(organization_id: @organization.id, role: :org_admin)
      redirect_to @profile, success: "Congrats! Welcome to Four Athens!"
    else
      render :new
    end
  end

  def show
    @organization = Organization.find(params[:id])
  end

  private
  def secure_params
    params.require(:organization).permit(:name, :org_owner_id, profile_attributes: [:street_address, :city, :state, :zip_code])
  end
end
