class ProjectsController < ApplicationController
  def index
    if params[:category]
      @projects = Project.joins(:categories).where(categories: {id: params[:category]}).order(:position)
    else
      @projects = Project.all.order(:position)
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end

