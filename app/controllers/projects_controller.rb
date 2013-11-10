class ProjectsController < ApplicationController
  def index
    if params[:category]
      @projects = Project.joins(:categories).where(categories: {id: params[:category]})
    else
      @projects = Project.all
    end
  end

  def show
  end
end

