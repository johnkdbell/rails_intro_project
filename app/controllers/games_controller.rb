class GamesController < ApplicationController
  def index
    @games = Game.includes(:developer).order("name ASC").page(params[:page])
    @search_genres = Genre.pluck(:name).uniq
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    @search_genres = Genre.pluck(:name).uniq
    wildcard_search = "%#{params[:keywords]}%"
    genre = "%#{params[:category]}%"

    @games = Game.where("name LIKE ?", wildcard_search).order("name ASC")
  end
end