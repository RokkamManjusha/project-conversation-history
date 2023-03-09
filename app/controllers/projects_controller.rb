# app/controllers/projects_controller.rb
class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @comment = @project.comments.build
  end

  def index
    @projects = current_user.projects
  end

  def new
    @project = Project.find_or_create_by(params[:title])
    if @project.valid?
      @project.save!
      render :show
    else
      render :new
    end
  end

  def create_comment
    @project = Project.find(params[:id])
    @comment = @project.comments.build(comment_params, 'comment')

    if @comment.save
      redirect_to @project, notice: "Comment created successfully."
    else
      render :show
    end
  end
  #
  # def update_status
  #   @project = Project.find(params[:id])
  #
  #   if @project.update(status: params[:status])
  #     redirect_to @project, notice: "Status updated successfully."
  #   else
  #     render :show
  #   end
  # end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
