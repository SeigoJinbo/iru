require "open-uri"
class OrganizationsController < ApplicationController
  include CloudinaryHelper
  before_action :set_organization, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      PgSearch::Multisearch.rebuild(policy_scope(Organization))
      PgSearch::Multisearch.rebuild(policy_scope(Event))
      @results = PgSearch.multisearch(params[:query])
    else
      @organizations = policy_scope(Organization)
    end
  end

  def show
    @organization_comment = OrganizationComment.new
    @enrollment = Enrollment.new
    @donation = Donation.new
    @membership = Membership.new
    # @events = @organization.events.select { |event| event.status = "Accepted" }

    @volunteer_events = @organization.events.select { |event| event.category == "Volunteer" && event.end_time > Time.now }
    @fundraiser_events = @organization.events.select { |event| event.category == "Fundraiser" && event.end_time > Time.now }
    @donation_events = @organization.events.select { |event| event.category == "Donation" && event.end_time > Time.now }

		@events = @organization.events.uniq
    @colors = @events.map do |event|
      event.title
    end


  end

  def map
    authorize current_user
    if params[:query].present?
      @organizations = Organization.all.tagged_with((params[:query]))
    else
      @organizations = Organization.all
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
    @markers[:organization] = @organizations.geocoded.map do |organization|
      {
        lat: organization.latitude,
        lng: organization.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { organization: organization }),
        image_url: helpers.asset_url(marker_image[organization.tag_list.first] || "8.png")
      }
    end
  end

  def new
    authorize current_user
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    authorize @organization
    unless @organization.photos.attached?
      org_logo = URI.open('https://archive.org/download/no-photo-available/no-photo-available.png')
      org_banner = URI.open('https://cdn.kurashi-no.jp/assets/noimage-d0b1347608ca95154664baaba4fafcebc7d2280461b778eef871ce9662c6b822.png')
      @organization.photos.attach(io: org_logo, filename: 'org_logo.png', content_type: 'image/png')
      @organization.photos.attach(io: org_banner, filename: 'org_banner.jpg', content_type: 'image/jpg')
    end
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
    params.require(:organization).permit(:name, :email, :address, :latitude, :longitude, photos: [], tag_list: [])
  end
end
