class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @organizations = policy_scope(Organization)
  end

  def show
    @enrollment = Enrollment.new
  end

  def new
    authorize current_user
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    authorize @organization
    if @organization.save
      Membership.create(
        organization: @organization,
        user: current_user
      )
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
    authorize @organization
  end

  def organization_params
    params.require(:organization).permit(:name, :email, :address, :latitude, :longitude, photos: [])
  end
end
