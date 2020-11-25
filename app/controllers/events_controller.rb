class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  include CloudinaryHelper
  def index
    if params[:query].present?
      PgSearch::Multisearch.rebuild(policy_scope(Organization))
      PgSearch::Multisearch.rebuild(policy_scope(Event))
      @results = PgSearch.multisearch(params[:query])
    else
      @events = policy_scope(Event)
    end
  end


  def map
    authorize current_user
    if params[:query].present? && params[:category].present?
      @events = Event.all.tagged_with((params[:query])).where(category: params[:category])
    elsif params[:query].present?
      @events = Event.all.tagged_with((params[:query]))
    elsif params[:category].present?
      @events = Event.all.where(category: params[:category])
    else
      @events = Event.all
    end
    marker_image = {
      "Animals/Wildlife" => "0.png",
      "Children/Youth" => "1.png",
      "Disasters" => "2.png",
      "Education" => "3.png",
      "Environment/Agriculture" => "4.png",
      "Health" => "5.png",
      "Women" => "6.png",
      "Seniors/Disabilities" => "7.png",
      "Other" => "8.png"
    }
    @markers = {}
    @markers[:user] = { lat: current_user.latitude, lng: current_user.longitude, image_url: cl_image_path(current_user.photos.first.key) }
    @markers[:event] = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url(marker_image[event.tag_list.first] || "8.png"),
        event_id: event.id
      }
    end
    # respond_to do |format|
    #   format.
    # end
  end

  def show
		@event_comment = EventComment.new
		@enrollment = Enrollment.new
		@donation = Donation.new
  end

  def new
    authorize current_user
    @event = Event.new
    @organization = Organization.find(params[:organization_id])
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @event = Event.new(event_params)
    authorize @event
    @event.organization = @organization
    @event.owner = current_user
    if @event.save
      redirect_to event_path(@event)

    else
      render 'new', locals: {category: params[:event][:category]}
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
    authorize @event
  end

  def event_params
    params.require(:event).permit(:organization, :user, :category, :title, :description, :ongoing, :start_time, :end_time, :positions, :photo, :target, :address, :item, dates: [])
  end
end
