class GamesController < ApplicationController
  def index
    @games = Game.includes(:developer).order("rating DESC").all
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @games = Game.where("name LIKE ?", wildcard_search)
  end
end
