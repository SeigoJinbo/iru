class OrganizationsController < ApplicationController
	include CloudinaryHelper
	before_action :set_organization, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @organizations = policy_scope(Organization)
  end

  def show
    @enrollment = Enrollment.new
    # @events = @organization.events.select do |event|
    #   event.status = "Accepted"
    # end
  end

  def map
    authorize current_user
    if params[:query].present?
      @organizations = Organization.all.tagged_with((params[:query]))
    else
      @organizations = Organization.all
		end
		marker_image = {"Animals/Wildlife" => "animals.png",
										"Children/Youth" => "children.png",
										"Disasters" => "disasters.png",
										"Education" => "education.png",
										"Environment/Agriculture" => "environment.png",
										"Health" => "health.png",
										"Women" => "women.png",
										"Seniors/Disabilities" => "seniors.png",
										"Other" => "others.png"
									}
    @markers = {}
    @markers[:user] = { lat: current_user.latitude, lng: current_user.longitude, image_url: cl_image_path(current_user.photos.first.key) }
    @markers[:organization] = @organizations.geocoded.map do |organization|
      {
        lat: organization.latitude,
        lng: organization.longitude,
				infoWindow: render_to_string(partial: "info_window", locals: { organization: organization }),
				image_url: helpers.asset_url( marker_image[organization.tag_list.first] || "others.png" )
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
