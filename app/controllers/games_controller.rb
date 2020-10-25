class GamesController < ApplicationController
  def index
    @games = Game.includes(:developer).order("name ASC").page(params[:page])
    @search_genres = Genre.pluck(:name).uniq
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @games = Game.where("name LIKE ?", wildcard_search).order("name ASC")
  end
end