class DonationsController < ApplicationController
  before_action :set_donation, only: %i[update destroy show]

  def show
    authorize current_user
    @donation = current_user.donations.find(params[:id])
    @event = @donation.event
  end

  def new
    @donation = Donation.new
    @event = Event.find(params[:event_id])
    authorize @donation
  end

  def create
    @donation = Donation.new(donation_params)
    @event = Event.find(params[:event_id])
    @donation.user = current_user
    @donation.event = @event
    @organization = @event.organization
    authorize @donation
    if @donation.save
      redirect_to donation_path(@donation)
    else
      render :new
    end
  end

  def update
    authorize @donation
    if @donation.update(donation_params)
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    authorize @donation
    @donation.destroy
    redirect_to organization_path(@donation.event.organization)
  end

  private

  def donation_params
    params.require(:donation).permit(:user_id, :event_id, :amount, :status)
  end

  def set_donation
    @donation = Donation.find(params[:id])
  end
end
