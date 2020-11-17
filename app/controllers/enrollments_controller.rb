class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:update, :destroy]
  def new
    @enrollment = Enrollment.new
    @event = Event.find(params[event_id])
    authorize @enrollment
  end

  def create
    @enrollment = enrollment.new(enrollment_params)
    @event = Event.find(params[:event_id])
    @enrollment.user = current_user
    @enrollment.event = @event
    authorize @enrollment
    if @enrollment.save
      redirect_to user_path
    else
      render "events/show"
    end
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    authorize @enrollment
    if @enrollment.update(enrollment_params)
      redirect_to user_path
    end
  end

  def destroy
    @enrollment = enrollment.find(params[:id])
    authorize @enrollment
    @enrollment.destroy
    redirect_to user_path
  end

  private

  def set_enrollment
    params.require(:enrollment).permit(:user_id, :event_id, :start_time, :end_time, :status)
  end


end
