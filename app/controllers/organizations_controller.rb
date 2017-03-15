class OrganizationController < ApplicationController
  def new
    @organization = Organization.new
    end

  def create
    @organization = Organization.new
    if @organization.save
      redirect_to root_path
    else
      render new
    end
  end
end
