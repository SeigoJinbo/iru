class OrganizationCommentsController < ApplicationController


  def new
    @organization_comment = OrganizationComment.new
    @organization = Organization.find(params[:id])
    authorize current_user
  end

  def create
    authorize current_user
    @organization = Organization.find(params[:organization_id])
    @organization_comment = OrganizationComment.new(organization_comment_params)
    @organization_comment.user = current_user
    @organization_comment.organization = @organization
    if @organization_comment.save
      redirect_to organization_path(@organization)
    else
      render "organizations/show"
    end
  end

  def destroy
    authorize current_user
    @organization_comment = OrganizationComment.find(params[:id])
    @organization_comment.destroy
    redirect_to organization_path(@organization_comment.organization)
  end

  private

  def organization_comment_params
    params.require(:organization_comment).permit(:user, :organization, :content)
  end
end
