class MembershipsController < ApplicationController
  before_action :set_membership, only: [:edit, :update]
  def new
    @membership = Membership.new
    @organization = Organization.find(params[:id])
    authorize current_user
  end

  def create
    authorize current_user

    @organization = Organization.find(params[:organization_id])
    @membership = Membership.new(membership_params)
    @membership.organization = @organization
    @membership.user = current_user
    if @membership.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize current_user
    if @membership.update(membership_params)
      redirect_to organization_path(@membership.organization)
    else
      render :edit
    end
  end

  private

  def membership_params
    params.require(:membership).permit(:status)

  end

  def set_membership
    @membership = Membership.find(params[:id])

  end
end
