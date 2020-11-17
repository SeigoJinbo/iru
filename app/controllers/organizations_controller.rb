class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update]
  def index
    @organizations = Organization.all
  end

  def show

  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    Membership.create(
      organization: @organization,
      user: current_user
      )
    if @organization.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @organization.update(organization_params)
      redirect_to organization_path(@organization)
    else
      render :edit
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name, :email, :address, :latitude, :longitude)
  end

end
