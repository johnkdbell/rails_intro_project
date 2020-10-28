class DevelopersController < ApplicationController
  def index
    @developers = Developer.all.page(params[:page])
  end

  def show
    @developer = Developer.find(params[:id])
  end
end
