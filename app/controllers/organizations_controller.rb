class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new
    end

  def create
    @organization = Organization.new(secure_params)
    if @organization.save
      #
    else
      render new
    end
  end

  private
  def secure_params
    params.require(:organization).permit(:name)
  end
end
