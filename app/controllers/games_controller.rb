class GamesController < ApplicationController
  def index
    @games = Game.includes(:developer).order("rating DESC").all
  end

  def show
    @game = Game.find(params[:id])
  end
end
