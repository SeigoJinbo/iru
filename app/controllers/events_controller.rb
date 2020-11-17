class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @event = Event.new(event_params)
    @event.organization = @organization
    @event.owner = current_user
    if @event.save
      redirect_to organization_path(event.organization)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to organization_path(event.organization)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to organization_path(@event.organization)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:organization, :user, :category, :title, :description, :ongoing, :start_time, :end_time, :positions, :photo)
  end
end
