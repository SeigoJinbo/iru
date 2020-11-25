class EventCommentsController < ApplicationController

  def new
    @event_comment = EventComment.new
    @event = Event.find(params[:id])
    authorize current_user
  end

  def create
    authorize current_user
    @event = Event.find(params[:event_id])
    @event_comment = EventComment.new(event_comment_params)
    @event_comment.user = current_user
    @event_comment.event = @event
		if @event_comment.save
      redirect_to event_path(@event, anchor: "comment-#{@event_comment.id}", tab: "comments")
    else
      render "events/show"
    end
  end

  def destroy
    authorize current_user
    @event_comment = EventComment.find(params[:id])
    @event_comment.destroy
    redirect_to event_path(@event_comment.event)
  end

  private

  def event_comment_params
    params.require(:event_comment).permit(:user, :event, :content)
  end
end
