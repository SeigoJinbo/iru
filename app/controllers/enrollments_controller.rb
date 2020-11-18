class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:update, :destroy]
  def new
    @enrollment = Enrollment.new
    @event = Event.find(params[:event_id])
    authorize @enrollment
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @event = Event.find(params[:event_id])
    @enrollment.user = current_user
    @enrollment.event = @event
    @organization = @event.organization
    authorize @enrollment
    if @enrollment.save
      redirect_to user_path(current_user)
    else
      render "organizations/show"
    end
  end

  def update
    authorize @enrollment
    if @enrollment.update(enrollment_params)
      redirect_to organization_path(@enrollment.event.organization)
    end
  end

  def destroy
    authorize @enrollment
    @enrollment.destroy
    redirect_to organization_path(@enrollment.event.organization)
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:user_id, :event_id, :start_time, :end_time, :status)
  end

  def set_enrollment
    @enrollment = Enrollment.find(params[:id])
  end
end
